//
//  transitionProtocol.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import Foundation
import UIKit

protocol TransitionProtocol: AnyObject {
    func transitionMenu()
    func transitionFortuneTelling()
}

extension TransitionProtocol where Self: UIViewController {
    func transitionMenu() {
        let viewController = R.storyboard.menu().instantiateViewController(identifier: R.storyboard.menu.menu.identifier) { coder in
            MenuViewController(coder: coder)
        }
        self.navigationController?.pushViewController(viewController, animated: true)
    }

    func transitionFortuneTelling() {
        let viewController = R.storyboard.fortuneTelling().instantiateViewController(identifier: R.storyboard.fortuneTelling.fortuneTelling.identifier) { coder in
            FortuneTellingViewController(coder: coder)
        }
        self.navigationController?.pushViewController(viewController, animated: true)
    }
}

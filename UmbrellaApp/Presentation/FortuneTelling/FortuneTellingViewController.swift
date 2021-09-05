//
//  FortuneTellingViewController.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import UIKit
import  RxSwift

class FortuneTellingViewController: UIViewController {
    init?(coder: NSCoder, prefectureId: String) {
        print(prefectureId)
        super.init(coder: coder)
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

//
//  MenuViewController.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import UIKit

class MenuViewController: UIViewController, TransitionProtocol {
    @IBOutlet weak var prfecturesDropDown: PrefecturesDropDownView!
    @IBOutlet weak var fortuneTellingButton: UIButton!
    @IBOutlet weak var openDropDownButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    private func setupViews() {
        // 占いボタンタップ時の処理を登録する
        self.fortuneTellingButton.addTarget(self, action: #selector(tapStartButton), for: .touchUpInside)
        // ドロップダウンを開くボタンタップ時の処理を登録する
        self.openDropDownButton.addTarget(self, action: #selector(showDropDown), for: .touchUpInside)
    }
    
    @objc private func tapStartButton() {
        // 占い画面に遷移する
        self.transitionFortuneTelling()
    }
    
    
    @objc private func showDropDown() {
        prfecturesDropDown.dropDown.show()
    }
}

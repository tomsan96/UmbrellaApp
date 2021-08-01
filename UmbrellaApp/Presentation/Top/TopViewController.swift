//
//  TopViewController.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/07/30.
//

import UIKit

class TopViewController: UIViewController, TransitionProtocol {
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面のviewを作成する
        self.setupViews()
    }
    
    private func setupViews() {
        // 開始ボタンタップ時の処理を登録する
        self.startButton.addTarget(self, action: #selector(tapStartButton), for: .touchUpInside)
    }
    
    @objc private func tapStartButton() {
        // メニュー画面に遷移する
        self.transitionMenu()
    }
}

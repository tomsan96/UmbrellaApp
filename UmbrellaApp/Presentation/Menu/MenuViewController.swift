//
//  MenuViewController.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import UIKit
import RxSwift

class MenuViewController: UIViewController, TransitionProtocol {
    @IBOutlet weak var prfecturesDropDown: PrefecturesDropDownView!
    @IBOutlet weak var fortuneTellingButton: UIButton!

    private let viewModel = MenuViewModel()
    private let disposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    private func setupViews() {
        // 占いボタンタップ時の処理を登録する
        self.fortuneTellingButton.addTarget(self, action: #selector(tapStartButton), for: .touchUpInside)
    }

    // 占い画面に遷移する
    @objc private func tapStartButton() {
        transitionFortuneTelling(prefectureId: prfecturesDropDown.getPrefectureId())
    }
}

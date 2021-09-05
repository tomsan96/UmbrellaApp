//
//  PrefecturesDropDownView.swift
//  UmbrellaApp
//
//  Created by 山崎定知 on 2021/08/01.
//

import DropDown

class PrefecturesDropDownView: BaseNibView {
    let dropDown = DropDown()
    
    @IBOutlet weak var prefectureDropDownView: UIView!
    @IBOutlet weak var selectedPrefectureLabel: UILabel!
    @IBOutlet weak var openDropDownButton: UIButton!

    var prefecturesArray: [AppConst.JapanesePrefecture] = AppConst.JapanesePrefecture.all
    var prefectureId: String = ""

    override init(frame: CGRect) {
        super .init(frame: frame)
        commonInit()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        selectedPrefectureLabel.text = "都道府県を選択してください"
        // ドロップダウンの中身生成
        dropDown.anchorView = prefectureDropDownView
        prefecturesArray.forEach { (prefecture) in
            dropDown.dataSource.append(prefecture.name)
        }
        dropDown.direction = .bottom
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            selectedPrefectureLabel.text = prefecturesArray[index].name
            prefectureId = prefecturesArray[index].id
        }
        // ドロップダウンを開くボタンタップ時の処理を登録する
        openDropDownButton.addTarget(self, action: #selector(showDropDown), for: .touchUpInside)
        openDropDownButton.titleEdgeInsets.right = 5
    }

    // ドロップダウンを表示する
    @objc private func showDropDown() {
        dropDown.show()
    }
    
    func getPrefectureId() -> String {
        return prefectureId
    }
}

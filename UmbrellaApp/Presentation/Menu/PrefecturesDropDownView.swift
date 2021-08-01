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

    
    var prefecturesArray: [AppConst.JapanesePrefecture] = AppConst.JapanesePrefecture.all
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    private func commonInit() {
        // ドロップダウンの中身生成
        dropDown.anchorView = prefectureDropDownView
        prefecturesArray.forEach { (prefecture) in
            dropDown.dataSource.append(prefecture.name)
        }
        dropDown.direction = .bottom
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            
        }
    }
}

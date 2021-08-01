//
//  BaseNibView.swift
//  SampleApp
//
//  Created by 山崎定知 on 2021/07/31.
//

import UIKit
class BaseNibView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadNib()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadNib()
    }

    fileprivate func loadNib() {
        let name = NSStringFromClass(type(of: self))
        let bundle = Bundle(for: NSClassFromString(name)!)
        let nibName = name.components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            let bindings = ["view": view]
            addConstraints(
                NSLayoutConstraint.constraints(
                    withVisualFormat: "H:|[view]|",
                    options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                    metrics: nil,
                    views: bindings))
            addConstraints(
                NSLayoutConstraint.constraints(
                    withVisualFormat: "V:|[view]|",
                    options: NSLayoutConstraint.FormatOptions(rawValue: 0),
                    metrics: nil,
                    views: bindings))
        }
    }
}

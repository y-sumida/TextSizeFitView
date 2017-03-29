//
//  TextSizeFItView.swift
//  TextSizeFitView
//
//  Created by 住田祐樹 on 2017/03/29.
//  Copyright © 2017年 住田祐樹. All rights reserved.
//

import UIKit

class TextSizeFitView: UIView {
    @IBOutlet weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        loadView()
    }
    
    func setTitle(title: String) {
        
        titleLabel.text = title
        if let size = titleLabel.attributedText?.size() {
            
            self.translatesAutoresizingMaskIntoConstraints = true
            self.frame = CGRect(x: self.frame.origin.x, y: self.frame.origin.y, width: ceil(size.width) + 8, height: 16)
        }
        self.layer.cornerRadius = 8.0
        self.backgroundColor = UIColor.green
        layoutIfNeeded()
    }
    
    func loadView() {
        let className = NSStringFromClass(type(of: self))
        let bundle = Bundle(for: type(of: self))
        let nibName = className.components(separatedBy: ".").last!
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(view)
        
        // カスタムViewのサイズを自分自身と同じサイズにする
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[view]|",
                                                      options:NSLayoutFormatOptions(rawValue: 0),
                                                      metrics:nil,
                                                      views: bindings))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[view]|",
                                                      options:NSLayoutFormatOptions(rawValue: 0),
                                                      metrics:nil,
                                                      views: bindings))
    }
}


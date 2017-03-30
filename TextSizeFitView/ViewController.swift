//
//  ViewController.swift
//  TextSizeFitView
//
//  Created by 住田祐樹 on 2017/03/29.
//  Copyright © 2017年 住田祐樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var parentView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let view1 = TextSizeFitView()
        view1.setTitle(title: "ビュー１")
        view1.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(view1)
        
        view1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor,constant: 30.0).isActive = true
        view1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 100.0).isActive = true
        view1.widthAnchor.constraint(equalToConstant: view1.frame.width).isActive = true
        view1.heightAnchor.constraint(equalToConstant: view1.frame.height).isActive = true

        
        let view2 = TextSizeFitView()
        view2.setTitle(title: "コードから")
        view2.translatesAutoresizingMaskIntoConstraints = false
        self.parentView.addSubview(view2)
    
        view2.leadingAnchor.constraint(equalTo: self.parentView.leadingAnchor,constant: 30.0).isActive = true
        view2.topAnchor.constraint(equalTo: self.parentView.topAnchor, constant: 10.0).isActive = true
        view2.widthAnchor.constraint(equalToConstant: view2.frame.width).isActive = true
        view2.heightAnchor.constraint(equalToConstant: view2.frame.height).isActive = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


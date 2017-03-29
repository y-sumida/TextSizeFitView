//
//  ViewController.swift
//  TextSizeFitView
//
//  Created by 住田祐樹 on 2017/03/29.
//  Copyright © 2017年 住田祐樹. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textSizeFitView: TextSizeFitView!

    override func viewDidLoad() {
        super.viewDidLoad()
        textSizeFitView.setTitle(title: "ほげほげ")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


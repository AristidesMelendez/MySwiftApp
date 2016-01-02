//
//  ContacViewController.swift
//  MySwiftApp
//
//  Created by Aristides Melendez H on 12/31/15.
//  Copyright © 2015 Aristides Melendez H. All rights reserved.
//

import UIKit

class ContacViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(scrollView)
    }

    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        scrollView.contentSize = CGSizeMake(375, 950)
        
    }
   
}

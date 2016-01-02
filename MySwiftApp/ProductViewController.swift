//
//  ProductViewController.swift
//  MySwiftApp
//
//  Created by Aristides Melendez H on 12/31/15.
//  Copyright © 2015 Aristides Melendez H. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var productName: String?

    @IBOutlet weak var ProductNameLabel: UILabel!
    
    @IBOutlet weak var ProductImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        ProductNameLabel.text = productName
        ProductImageView.image = UIImage(named: "phone-fullscreen3")
    }

    @IBAction func addToCartPressed(sender: AnyObject) -> Void {
        print("Boton presionado.")
    }
}

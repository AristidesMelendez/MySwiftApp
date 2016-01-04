//
//  ProductViewController.swift
//  MySwiftApp
//
//  Created by Aristides Melendez H on 12/31/15.
//  Copyright © 2015 Aristides Melendez H. All rights reserved.
//

import UIKit

class ProductViewController: UIViewController {
    
    var product: Product?

    @IBOutlet weak var ProductNameLabel: UILabel!
    
    @IBOutlet weak var ProductImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let p = product {
            ProductNameLabel.text = p.name
            if let i = p.productImage {
                ProductImageView.image = UIImage(named: i)
            }
        }

    }

    @IBAction func addToCartPressed(sender: AnyObject) -> Void {
        print("Boton presionado.")
    }
}

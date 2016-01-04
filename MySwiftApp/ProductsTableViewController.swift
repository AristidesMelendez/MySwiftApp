//
//  ProductsTableViewController.swift
//  MySwiftApp
//
//  Created by Aristides Melendez H on 12/31/15.
//  Copyright © 2015 Aristides Melendez H. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var products: [Product]?
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let productName = products?[indexPath.row]
        if let p = productName {
            cell.textLabel?.text = p.name
            if let i = p.cellImage {
                cell.imageView?.image = UIImage(named: i)
            }

        }
        return cell
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let pNames =  products {
            return pNames.count
        }
        return 0
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            
            // get the cell that was tapped
            
            // get the index path for that cell
            
            // use the index path to get the product name from the array
            
            // send the product name to the product view controller
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else {
                    return
            }
            
            productVC?.product =  products?[indexPath.row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let product1 = Product()
        let product2 = Product()
        let product3 = Product()
        let product4 = Product()
        
        product1.name = "1907 pared"
        product1.cellImage = "image-cell1"
        product1.productImage = "phone-fullscreen1"
        
        product2.name = "1921 telefono de rueda"
        product2.cellImage = "image-cell2"
        product2.productImage = "phone-fullscreen2"
        
        product3.name = "1937 telefono de mesa"
        product3.cellImage = "image-cell3"
        product3.productImage = "phone-fullscreen3"
        
        product4.name = "1984 Motorola"
        product4.cellImage = "image-cell4"
        product4.productImage = "phone-fullscreen4"
        
        products = [product1, product2, product3, product4]
    }

}

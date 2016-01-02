//
//  ProductsTableViewController.swift
//  MySwiftApp
//
//  Created by Aristides Melendez H on 12/31/15.
//  Copyright © 2015 Aristides Melendez H. All rights reserved.
//

import UIKit

class ProductsTableViewController: UITableViewController {
    
    var productNames: [String]?
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("ProductCell", forIndexPath: indexPath)
        
        let productName = productNames?[indexPath.row]
        if let pName = productName {
            cell.textLabel?.text = pName
        }
        
        //cell.textLabel?.text = "Hola Aristides"
        cell.imageView?.image = UIImage(named: "image-cell2")
        return cell
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let pNames =  productNames {
            return pNames.count
        }
        return 0
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "ShowProduct" {
            let productVC = segue.destinationViewController as? ProductViewController
            productVC?.productName = "Telefono viejo"
            
            // get the cell that was tapped
            
            // get the index path for that cell
            
            // use the index path to get the product name from the array
            
            // send the product name to the product view controller
            
            guard let cell = sender as? UITableViewCell,
                let indexPath = tableView.indexPathForCell(cell) else {
                    return
            }
            
            productVC?.productName =  productNames?[indexPath.row]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNames = ["1907 pared", "1921 telefono de rueda", "1937 telefono de mesa", "1984 Motorola"]
    }

}

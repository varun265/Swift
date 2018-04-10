//
//  ViewController.swift
//  CoderSwag
//
//  Created by varun varma on 24/3/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var categoryTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategory().count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let catergory = DataService.instance.getCategory()[indexPath.row]
            cell.updateViews(category: catergory)
            return cell
        }
        else{
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategory()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            assert(sender as? Category != nil)
            productsVC.initializeProducts(category: sender as! Category)
        }
    }
}


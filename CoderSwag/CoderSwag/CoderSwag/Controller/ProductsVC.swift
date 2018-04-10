//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by varun varma on 4/4/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    

    @IBOutlet weak var productCollection: UICollectionView!
    
    private(set) public var products = [Product]()
    override func viewDidLoad() {
        super.viewDidLoad()

       productCollection.dataSource = self
        productCollection.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initializeProducts(category: Category)
    {
        products = DataService.instance.getProduct(forCatergoryTtlie: category.title)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCell{
            let product = products[indexPath.row]
            cell.updateView(product: product)
            return cell
        }
        return ProductCell()
        
    }
    

}

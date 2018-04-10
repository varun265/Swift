//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by varun varma on 24/3/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category){
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
        
    }

   

}

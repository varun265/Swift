//
//  Product.swift
//  CoderSwag
//
//  Created by varun varma on 2/4/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import Foundation
struct Product{
    
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price:String, imageName:String)
    {
        self.title = title
        self.imageName  = imageName
        self.price = price
    }
}

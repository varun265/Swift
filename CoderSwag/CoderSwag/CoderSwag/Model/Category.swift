//
//  Category.swift
//  CoderSwag
//
//  Created by varun varma on 24/3/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import Foundation

struct Category{
    
    private(set) public var title: String  // private(set) allows variable to get extended publically               but doesn't allow to set a value for it.
    private(set) public var imageName: String

    init(title: String, imageName: String){
        
        self.title = title
        self.imageName  = imageName
    }
}

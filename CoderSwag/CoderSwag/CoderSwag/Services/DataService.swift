//
//  DataService.swift
//  CoderSwag
//
//  Created by varun varma on 24/3/18.
//  Copyright © 2018 varun varma. All rights reserved.
//

import Foundation

class DataService{
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    private let hats = [
        Product(title: "Devsloper Logo graphic Beanie", price: "$18", imageName: "hat01.png"),
        Product(title: "Devsloper Logo HAT Black", price: "$10", imageName: "hat02.png"),
        Product(title: "Devsloper Logo HAT White", price: "$22", imageName: "hat03.png"),
        Product(title: "Devsloper Logo SnapBack", price: "$15", imageName: "hat04.png")
    ]
    
    private let hoodies = [
      Product(title: "Devsloper Logo Hoodies grey", price: "$22", imageName: "hoodie01.png"),
      Product(title: "Devsloper Logo Hoodies red", price: "$25", imageName: "hoodie02.png"),
      Product(title: "Devsloper Logo Hoodies black", price: "$25", imageName: "hoodie03.png"),
      Product(title: "Devsloper Logo Hoodies purple", price: "$18", imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devsloper Logo Shirt grey", price: "$35", imageName: "shirt01.png"),
        Product(title: "Devsloper Logo Shirt red", price: "$40", imageName: "shirt02.png"),
        Product(title: "Devsloper Logo Shirt black", price: "$45", imageName: "shirt03.png"),
        Product(title: "Devsloper Logo Shirt purple", price: "$36", imageName: "shirt04.png"),
        ]
    
    private let digitalGoods = [Product]()
    
    func getCategory() -> [Category]{
        return categories
    }
    
    
    func getProduct(forCatergoryTtlie title:String) ->[Product]
    {
        switch title {
        case "SHIRTS":
            return getShirts()
        case "HATS":
           return getHats()
        case "HOODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
    }
    
    func getHats() -> [Product]
    {
        return hats
    }
    
    func getShirts() -> [Product]
    {
        return shirts
    }
    
    func getHoodies() -> [Product]
    {
        return hoodies
    }
    
    func getDigitalGoods() -> [Product]
    {
        return digitalGoods
    }
}

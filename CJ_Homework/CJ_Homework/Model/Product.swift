//
//  Product.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/21/25.
//

import Foundation

struct Product: Decodable {
    let id: String
    let name: String
    let brand: String
    let price: Int
    let discountPrice: Int
    let discountRate: Int
    let image: String
    let link: String
    let tags: [String]
    let benefits: [String]
    let rating: Double
    let reviewCount: Int
}

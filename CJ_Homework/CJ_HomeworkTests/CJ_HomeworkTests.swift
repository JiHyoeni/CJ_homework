//
//  CJ_HomeworkTests.swift
//  CJ_HomeworkTests
//
//  Created by 박지현 on 6/22/25.
//

import XCTest
@testable import CJ_Homework

final class CJ_HomeworkTests: XCTestCase {
    //MARK: ProductViewModel
    ///ProductViewModel.loadData
    func testDecoding() throws {
        let json = """
        [
            {
                "id": "2032962323",
                "name": "최신상 글로우핏 란제리 커버쿠션 더블구성",
                "brand": "누본셀블랑두부",
                "price": 89000,
                "discountPrice": 84000,
                "discountRate": 6,
                "image": "https://image.cjonstyle.net/goods_images/20/323/2032962323L.jpg",
                "link": "https://item.cjonstyle.com/item/2032962323?channelCode=30002002",
                "tags": [
                    "방송상품",
                    "무료배송",
                    "무료반품"
                ],
                "benefits": [
                    "쇼플쿠폰5,000원",
                    "무이자6"
                ],
                "rating": 4.8,
                "reviewCount": 4086
            }
        ]
        """.data(using: .utf8)!

        //check decoded
        let decoded = try JSONDecoder().decode([Product].self, from: json)
        XCTAssertEqual(decoded.first?.brand, "누본셀블랑두부") //case success
//        XCTAssertEqual(decoded.first?.brand, "카시아 속초") //case fail
        XCTAssertEqual(decoded.first?.discountRate, 6)  //case success
        XCTAssertEqual(decoded.first?.tags, ["방송상품", "무료배송", "무료반품"])  //case success
    }
    
    ///ProductViewModel.getRandomProducts
    func testGetRandomProducts() throws {
        let products: [Product] = [
            Product(id: "2058724538", name: "카시아 속초 스위트룸 주중 주말 균일가 2박", brand: "카시아 속초", price: 599000, discountPrice: 53910, discountRate: 10, image: "https://image.cjonstyle.net/goods_images/20/538/2058724538L.jpg", link: "https://item.cjonstyle.com/item/2058724538?channelCode=30002002", tags: ["방송상품"], benefits: [], rating: 3.5, reviewCount: 6),
            Product(id: "2032962323", name: "최신상 글로우핏 란제리 커버쿠션 더블구성", brand: "누본셀블랑두부", price: 89000, discountPrice: 84000, discountRate: 6, image: "https://image.cjonstyle.net/goods_images/20/323/2032962323L.jpg", link: "https://item.cjonstyle.com/item/2032962323?channelCode=30002002", tags: ["방송상품","무료배송","무료반품"], benefits: ["쇼플쿠폰5,000원","무이자6"], rating: 4.8, reviewCount: 4086),
            Product(id: "2058724538", name: "카시아 속초 스위트룸 주중 주말 균일가 2박", brand: "카시아 속초", price: 599000, discountPrice: 53910, discountRate: 10, image: "https://image.cjonstyle.net/goods_images/20/538/2058724538L.jpg", link: "https://item.cjonstyle.com/item/2058724538?channelCode=30002002", tags: ["방송상품"], benefits: [], rating: 3.5, reviewCount: 6)
        ]
    
        let uniqueProducts = Array(Dictionary(grouping: products, by: \.id).compactMap { $0.value.first })

        XCTAssertEqual(uniqueProducts.count, 2) //case success
//        XCTAssertEqual(uniqueProducts.count, 1) //case fail
    }
}


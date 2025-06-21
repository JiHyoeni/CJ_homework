//
//  ProductDetail.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/21/25.
//

import SwiftUI
import WebKit

struct ProductDetail: View {
    let product: Product
    ///test data
//    let product: Product = Product(id: "2058724538", name: "카시아 속초 스위트룸 주중 주말 균일가 2박", brand: "카시아 속초", price: 599000, discountPrice: 53910, discountRate: 10, image: "https://image.cjonstyle.net/goods_images/20/538/2058724538L.jpg", link: "https://item.cjonstyle.com/item/2058724538?channelCode=30002002", tags: ["방송상품"], benefits: [], rating: 3.5, reviewCount: 6)
    
    var body: some View {
        ProductWebView(url: product.link)
            .navigationTitle(product.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}
//struct ProductDetail_Preview: PreviewProvider {
//    static var previews: some View {
//        ProductDetail()
//    }
//}

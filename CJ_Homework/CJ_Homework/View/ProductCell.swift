//
//  ProductCell.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/21/25.
//

import SwiftUI

struct ProductCell: View {
    let product: Product
    
    ///test data
//    let product: Product = Product(id: "2058724538", name: "카시아 속초 스위트룸 주중 주말 균일가 2박", brand: "카시아 속초", price: 599000, discountPrice: 53910, discountRate: 10, image: "https://image.cjonstyle.net/goods_images/20/538/2058724538L.jpg", link: "https://item.cjonstyle.com/item/2058724538?channelCode=30002002", tags: ["방송상품"], benefits: [], rating: 3.5, reviewCount: 6)
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 400, height:400)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .padding(10)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .fontWeight(.heavy)
                ///할인율이 있을 경우 원가도 표시
                if product.discountRate > 0 {
                    HStack {
                        Text("\(product.price)원")
                            .foregroundColor(.gray)
                            .strikethrough()
                        Text("\(product.discountPrice)원")
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                    }
                } else {
                    Text("\(product.discountPrice)원")
                        .fontWeight(.bold)
                }
                Spacer()
            }
        }
    }
}


//struct ProductCell_Preview: PreviewProvider {
//    static var previews: some View {
//        ProductCell()
//    }
//}


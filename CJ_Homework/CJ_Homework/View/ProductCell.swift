//
//  ProductCell.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/21/25.
//

import SwiftUI

struct ProductCell: View {
    let product: Product
    

//    let product: Product = Product(id: "2058724538", name: "카시아 속초 스위트룸 주중 주말 균일가 2박", brand: "카시아 속초", price: 599000, discountPrice: 53910, discountRate: 10, image: "https://image.cjonstyle.net/goods_images/20/538/2058724538L.jpg", link: "https://item.cjonstyle.com/item/2058724538?channelCode=30002002", tags: ["방송상품"], benefits: [], rating: 3.5, reviewCount: 6)    //testData
    
    var body: some View {
        VStack(alignment: .center) {
            //MARK: 상품 이미지
            AsyncImage(url: URL(string: product.image)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 300, height:300)
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
            .padding(10)
            
            VStack(alignment: .leading, spacing: 10) {
                //MARK: brand
                HStack {
                    Text("["+product.brand+"]")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.leading, 20)
                    Spacer()
                }
                
                //MARK: name
                HStack {
                    Text(product.name)
                        .font(.system(size: 16))
                        .fontWeight(.heavy)
                        .padding(.leading, 30)
                }
                
                //MARK: price
                ///할인율이 있을 경우 할인율, 원가도 표시
                if product.discountRate > 0 {
                    HStack {
                        Text("\(product.discountRate)%")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.red)
                            .padding(.leading, 30)
                        Text("\(product.discountPrice)원")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                        Text("\(product.price)원")
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                            .strikethrough()
                            .foregroundColor(.gray)
                            
                    }
                } else {
                    Text("\(product.discountPrice)원")
                        .font(.system(size: 20))
                        .fontWeight(.bold)
                        .padding(.leading, 30)
                }
                
                //MARK: rating
                HStack(alignment: .bottom){
                    RatingView(rating: product.rating)
                        .padding(.leading, 30)
                    Text("(\(String(format: "%.1f", product.rating)))")
                        .font(.system(size: 12))
                }
                
                //MARK: tags
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .center) {
                        ForEach(product.tags, id: \.self) { tag in
                            Text(tag)
                                .font(.system(size: 12))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 4)
                                .background(Color.gray.opacity(0.2))
                                .clipShape(Capsule())
                        }
                    }
                }
                .padding(.leading, 30)
                
                //MARK: benefit
                HStack(alignment: .center) {
                    ForEach(product.benefits, id: \.self) { benetfit in
                        Text(product.benefits.last == benetfit ? benetfit : "\(benetfit),")
                            .font(.system(size: 12))
                            .underline()
                    }
                }
                .padding(.leading, 30)
                
                Spacer()    // 하단 여백
            }
        }
    }
}


//struct ProductCell_Preview: PreviewProvider {
//    static var previews: some View {
//        ProductCell()
//    }
//}


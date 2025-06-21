//
//  ProductList.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/21/25.
//
import SwiftUI

struct ProductList: View {
    @State var viewModel = ProductListViewModel()
    var body: some View {
        NavigationView {
            List {
                if let products = viewModel.getRandomProducts() {
                    ForEach(products, id: \.name) { product in
                        NavigationLink(destination: ProductDetail(product: product)) {
                            ProductCell(product: product)
                        }
                        .listRowSeparator(.hidden)
                    }
                } else {
                    Text("Products is nil")
                }
            }
        }
    }
}
struct PProductList_Preview: PreviewProvider {
    static var previews: some View {
        ProductList()
    }
}

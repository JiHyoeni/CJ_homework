//
//  ProductViewModel.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/21/25.
//

import Foundation


class ProductListViewModel: ObservableObject, Identifiable {
    @Published var products: [Product] = []
    
    init() {
        loadData()
    }
   
    func getRandomProducts() -> [Product]? {
        guard self.products.count > 0 else {
            print("products is empty")
            return nil
        }
        //TODO: 임의의 상품 데이터 3개 이상 추출
        ///중복제거
        let uniqueProducts = Array(Dictionary(grouping: self.products, by: \.id).compactMap { $0.value.first })
        ///3개이상 추출
        return Array(uniqueProducts[0..<min(3, uniqueProducts.count)])
    }
    
    private func loadData() {
        guard let url = Bundle.main.url(forResource: "products", withExtension: "json") else {
           print("JSON 파일을 찾을 수 없습니다.")
           return
        }
        do {
           let data = try Data(contentsOf: url)
           let decoded = try JSONDecoder().decode([Product].self, from: data)
           self.products = decoded
        } catch {
           print("decoding error: \(error)")
        }
    }
}

    

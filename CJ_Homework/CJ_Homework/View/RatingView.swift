//
//  RatingView.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/22/25.
//

import SwiftUI

struct RatingView: View {
    let rating: Double
    var body: some View {
        HStack(spacing:0) {
            ForEach(0..<Int(ceil(rating))) { index in
                if Double(index + 1) <= rating {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                } else {
                    Image(systemName: "star.leadinghalf.fill")
                        .foregroundColor(.yellow)
                }
            }
        }
    }
}
struct RatingView_Preview: PreviewProvider {
    static var previews: some View {
        RatingView(rating: 3)
    }
}

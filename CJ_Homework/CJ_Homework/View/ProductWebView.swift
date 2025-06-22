//
//  ProductWebView.swift
//  CJ_Homework
//
//  Created by 박지현 on 6/21/25.
//
import SwiftUI
import WebKit

struct ProductWebView: UIViewRepresentable {
    ///load할 url
    var url: String

    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: url) else{
            print("올바른 url이 아닙니다.")
            return WKWebView()
        }
        let webView = WKWebView()
        
        webView.allowsBackForwardNavigationGestures = true  //스와이프로 뒤로/앞으로 가기
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    func updateUIView(_ webView: WKWebView, context: UIViewRepresentableContext<ProductWebView>) {
        guard let url = URL(string: url) else{
            print("올바른 url이 아닙니다.")
            return
        }
        webView.load(URLRequest(url: url))
    }
}
struct ProductWebView_Preview: PreviewProvider {
    static var previews: some View {
        ProductWebView(url: "https://item.cjonstyle.com/item/2032962323?channelCode=30002002")
    }
}

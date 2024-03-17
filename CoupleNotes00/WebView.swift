//
//  WebView.swift
//  CoupleNotes00
//
//  Created by M.MUNG on 2024/03/14.
//

import SwiftUI
import WebKit

struct WebView: UIViewRepresentable {

    
    
    var urlToLoad: String
    
    // Make UI View
    func makeUIView(context: Context) -> WKWebView {
        
        // webview instant
        let webview = WKWebView()
        
        guard let url = URL(string: self.urlToLoad) else { return WKWebView()}
        
        webview.load(URLRequest(url: url))
        
        return webview
    }
    
    // update ui view
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
    }
    
    
}

#Preview {
    WebView(urlToLoad: "https://www.google.com")
}

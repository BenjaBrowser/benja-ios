//
//  BenjaWebView.swift
//  Benja
//
//  Created by Fernando Martín Ortiz on 23/7/25.
//

import WebKit
import SwiftUI

struct BenjaWebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: url))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: url))
    }
}

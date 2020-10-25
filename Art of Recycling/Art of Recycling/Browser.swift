//
//  Browser.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import Foundation
import SwiftUI
import WebKit

struct WebView: UIViewRepresentable{
    var url: String
    func makeUIView(context: Context) -> WKWebView {
        guard let url = URL(string: self.url) else{
            return WKWebView()
        }
        let request = URLRequest(url: url)
        let webview = WKWebView()
        webview.load(request)
        return webview
    }
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<WebView>) {
        
    }
}


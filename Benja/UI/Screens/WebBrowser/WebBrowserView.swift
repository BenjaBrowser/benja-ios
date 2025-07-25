//
//  WebBrowserView.swift
//  Benja
//
//  Created by Fernando Martín Ortiz on 23/7/25.
//

import SwiftUI

struct WebBrowserView: View {
    @State private var viewModel: WebBrowserViewModel = .init()

    var body: some View {
        VStack {
            BenjaWebView(url: viewModel.url)
                .frame(maxHeight: .infinity)
            SearchBar(text: $viewModel.searchText, onSearch: viewModel.search)
        }
    }
}

@Observable final class WebBrowserViewModel {
    var url: URL = URL(string: "about:blank")!
    var searchText: String = ""
    
    func search() {
        if let url = URL(string: searchText), UIApplication.shared.canOpenURL(url) {
            self.url = url
        } else {
            self.url = URL(string: "https://www.google.com/search?q=\(searchText.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? "")")!
        }
    }
}

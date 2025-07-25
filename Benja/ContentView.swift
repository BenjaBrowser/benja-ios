//
//  ContentView.swift
//  Benja
//
//  Created by Fernando Martín Ortiz on 17/6/25.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        WebBrowserView()
    }
}

@Observable
final class ContentViewModel {
    var text: String = ""

    func makeRequest() async {
        let llm: LanguageModel = HuggingFaceLLM()
        try? await llm.prepare()

        print(try! await llm.reply(to: "Hey, how are you?"))
    }
}

#Preview {
    ContentView()
}

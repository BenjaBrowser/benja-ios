//
//  ContentView.swift
//  Benja
//
//  Created by Fernando Martín Ortiz on 17/6/25.
//

import SwiftUI
import WebKit

struct ContentView: View {
    @State var viewModel: ContentViewModel = .init()

    var body: some View {
        VStack {

            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(viewModel.text)
        }
        .padding()
        .task {
            await viewModel.makeRequest()
        }
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

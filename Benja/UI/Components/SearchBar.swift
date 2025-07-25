//
//  SearchBar.swift
//  Benja
//
//  Created by Fernando Martín Ortiz on 25/7/25.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var onSearch: () -> Void

    var body: some View {
        HStack {
            TextField("Search or enter address", text: $text)
                .textFieldStyle(.plain)
                .padding(8)
                .background(Color(.systemGray5))
                .cornerRadius(10)
                .onSubmit(onSearch)
                .autocapitalization(.none)
                .disableAutocorrection(true)

            Button(action: onSearch) {
                Image(systemName: "arrow.right.circle.fill")
                    .font(.title)
            }
        }
        .padding()
        .background(Color(.systemGray6))
    }
}
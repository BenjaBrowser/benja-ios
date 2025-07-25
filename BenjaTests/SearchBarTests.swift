//
//  SearchBarTests.swift
//  BenjaTests
//
//  Created by Fernando Martín Ortiz on 25/7/25.
//

import Testing
import SwiftUI
@testable import Benja

@MainActor
struct SearchBarTests {
    @Test
    func testInitialization() {
        let searchText = "Hello, World!"
        let searchBar = SearchBar(text: .constant(searchText), onSearch: { })
        
        #expect(searchBar.text == searchText)
    }
    
    @Test
    func testOnSearchAction() {
        var searchTriggered = false
        let searchBar = SearchBar(text: .constant(""), onSearch: {
            searchTriggered = true
        })
        
        searchBar.onSearch()
        
        #expect(searchTriggered == true)
    }
}

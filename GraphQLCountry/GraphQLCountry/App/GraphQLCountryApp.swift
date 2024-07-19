//
//  GraphQLCountryApp.swift
//  GraphQLCountry
//
//  Created by Husnain Ali on 19/07/2024.
//

import SwiftUI

@main
struct GraphQLCountryApp: App {
    var body: some Scene {
        WindowGroup {
            CountriesListView(viewModel: .init())
        }
    }
}

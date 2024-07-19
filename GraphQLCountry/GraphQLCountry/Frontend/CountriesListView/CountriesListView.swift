//
//  CountriesListView.swift
//  GraphQLCountry
//
//  Created by Husnain Ali on 19/07/2024.
//

import SwiftUI

struct CountriesListView: View {
    
    @StateObject var viewModel: CountriesListViewModel
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
            } else if let countries = viewModel.countries {
                List(countries, id: \.code) { country in
                    VStack(alignment: .leading) {
                        Text(country.name)
                            .font(.headline)
                        Text("Code: \(country.code)")
                        Text("Capital: \(country.capital ?? "N/A")")
                        Text("Currencies: \(country.currencies.joined(separator: ", "))")
                    }
                }
            }
        }
        .onAppear {
            viewModel.fetchCountries()
        }
    }
}

#Preview {
    CountriesListView(viewModel: .init())
}

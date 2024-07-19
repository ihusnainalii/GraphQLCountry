//
//  ContentView.swift
//  GraphQLCountry
//
//  Created by Husnain Ali on 19/07/2024.
//

import SwiftUI

struct SpecificCountryView: View {
    
    @StateObject var viewModel: SpecificCountryViewModel
    
    var body: some View {
        VStack {
            if viewModel.isLoading {
                ProgressView("Loading...")
            } else if let errorMessage = viewModel.errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
                    .multilineTextAlignment(.center)
            } else if let country = viewModel.country {
                VStack(alignment: .leading) {
                    Text(country.name)
                        .font(.headline)
                    Text("Code: \(country.code)")
                    Text("Capital: \(country.capital ?? "N/A")")
                    Text("Currencies: \(country.currencies.joined(separator: ", "))")
                }
            }
        }
        .padding()
        .onAppear {
            viewModel.fetchSpecificCountry()
        }
    }
}

#Preview {
    SpecificCountryView(viewModel: .init())
}

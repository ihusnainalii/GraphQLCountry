//
//  ContentViewModel.swift
//  GraphQLCountry
//
//  Created by Husnain Ali - ILI on 19/07/2024.
//

import Foundation
import SwiftUI
import Apollo

class CountriesViewModel: ObservableObject {
//    @Published var countries: [CountriesQuery.Data.Country] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchCountries() {
        isLoading = true
        errorMessage = nil
        
//        Network.shared.apollo.fetch(query: CountriesQuery()) { [weak self] result in
//            DispatchQueue.main.async {
//                self?.isLoading = false
//                switch result {
//                case .success(let graphQLResult):
//                    if let countries = graphQLResult.data?.countries {
//                        self?.countries = countries.compactMap { $0 }
//                    } else if let errors = graphQLResult.errors {
//                        self?.errorMessage = errors.map { $0.localizedDescription }.joined(separator: "\n")
//                    }
//                case .failure(let error):
//                    self?.errorMessage = error.localizedDescription
//                }
//            }
//        }
    }
}

//
//  ContentViewModel.swift
//  GraphQLCountry
//
//  Created by Husnain Ali on 19/07/2024.
//

import Foundation
import SwiftUI
import Apollo
import CountryApi

class SpecificCountryViewModel: ObservableObject {
    
    @Published var country: SpecificCountryQuery.Data.Country?
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func fetchSpecificCountry() {
        isLoading = true
        errorMessage = nil
        Network.shared.apollo.fetch(query: SpecificCountryQuery()) { [weak self] result in
            DispatchQueue.main.async {
                self?.isLoading = false
                switch result {
                case .success(let graphQLResult):
                    if let country = graphQLResult.data?.country {
                        self?.country = country
                    } else if let errors = graphQLResult.errors {
                        self?.errorMessage = errors.map { $0.localizedDescription }.joined(separator: "\n")
                    }
                case .failure(let error):
                    self?.errorMessage = error.localizedDescription
                }
            }
        }
    }
}

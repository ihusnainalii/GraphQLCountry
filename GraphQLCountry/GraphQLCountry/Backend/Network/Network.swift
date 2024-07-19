//
//  Network.swift
//  GraphQLCountry
//
//  Created by Husnain Ali - ILI on 19/07/2024.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    private(set) lazy var apollo: ApolloClient = {
        let url = URL(string: "https://countries.trevorblades.com/")!
        return ApolloClient(url: url)
    }()
}

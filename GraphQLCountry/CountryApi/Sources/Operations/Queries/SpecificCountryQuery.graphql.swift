// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class SpecificCountryQuery: GraphQLQuery {
  public static let operationName: String = "SpecificCountry"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    definition: .init(
      #"query SpecificCountry { country(code: "PK") { __typename name code capital currencies emoji } }"#
    ))

  public init() {}

  public struct Data: CountryApi.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("country", Country?.self, arguments: ["code": "PK"]),
    ] }

    public var country: Country? { __data["country"] }

    /// Country
    ///
    /// Parent Type: `Country`
    public struct Country: CountryApi.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: any ApolloAPI.ParentType { CountryApi.Objects.Country }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .field("name", String.self),
        .field("code", CountryApi.ID.self),
        .field("capital", String?.self),
        .field("currencies", [String].self),
        .field("emoji", String.self),
      ] }

      public var name: String { __data["name"] }
      public var code: CountryApi.ID { __data["code"] }
      public var capital: String? { __data["capital"] }
      public var currencies: [String] { __data["currencies"] }
      public var emoji: String { __data["emoji"] }
    }
  }
}

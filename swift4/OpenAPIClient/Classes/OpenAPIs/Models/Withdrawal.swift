//
// Withdrawal.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct Withdrawal: Codable {

    public enum Currency: String, Codable {
        case btc = "BTC"
        case eth = "ETH"
    }
    public enum State: String, Codable {
        case unconfirmed = "unconfirmed"
        case confirmed = "confirmed"
        case cancelled = "cancelled"
        case completed = "completed"
        case interrupted = "interrupted"
        case rejected = "rejected"
    }
    /** The timestamp (seconds since the Unix epoch, with millisecond precision) */
    public var updatedTimestamp: Int
    /** Fee in currency */
    public var fee: Double?
    /** The timestamp (seconds since the Unix epoch, with millisecond precision) of withdrawal confirmation, &#x60;null&#x60; when not confirmed */
    public var confirmedTimestamp: Int?
    /** Amount of funds in given currency */
    public var amount: Double
    /** Id of priority level */
    public var priority: Double?
    /** Currency, i.e &#x60;\&quot;BTC\&quot;&#x60;, &#x60;\&quot;ETH\&quot;&#x60; */
    public var currency: Currency
    /** Withdrawal state, allowed values : &#x60;unconfirmed&#x60;, &#x60;confirmed&#x60;, &#x60;cancelled&#x60;, &#x60;completed&#x60;, &#x60;interrupted&#x60;, &#x60;rejected&#x60; */
    public var state: State
    /** Address in proper format for currency */
    public var address: String
    /** The timestamp (seconds since the Unix epoch, with millisecond precision) */
    public var createdTimestamp: Int?
    /** Withdrawal id in Deribit system */
    public var id: Int?
    /** Transaction id in proper format for currency, &#x60;null&#x60; if id is not available */
    public var transactionId: String

    public init(updatedTimestamp: Int, fee: Double?, confirmedTimestamp: Int?, amount: Double, priority: Double?, currency: Currency, state: State, address: String, createdTimestamp: Int?, id: Int?, transactionId: String) {
        self.updatedTimestamp = updatedTimestamp
        self.fee = fee
        self.confirmedTimestamp = confirmedTimestamp
        self.amount = amount
        self.priority = priority
        self.currency = currency
        self.state = state
        self.address = address
        self.createdTimestamp = createdTimestamp
        self.id = id
        self.transactionId = transactionId
    }

    public enum CodingKeys: String, CodingKey { 
        case updatedTimestamp = "updated_timestamp"
        case fee
        case confirmedTimestamp = "confirmed_timestamp"
        case amount
        case priority
        case currency
        case state
        case address
        case createdTimestamp = "created_timestamp"
        case id
        case transactionId = "transaction_id"
    }


}

//
//  HopperUnsynedPosition.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 06/01/2021.
//

import Foundation

public class HopperUnsynedPosition: Codable {
    
    public private(set) var pair: String?
    public private(set) var currency: String?
    public private(set) var amount: Double?
    public private(set) var rate: String?
    
    private enum CodingKeys: String, CodingKey {
        case pair = "pair"
        case currency = "cur"
        case amount = "amount"
        case rate = "rate"
    }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        pair = try container.decodeIfPresent(String.self, forKey: .pair)
        currency = try container.decodeIfPresent(String.self, forKey: .currency)
        
        // Handle amount as Double
        if let amountDouble = try? container.decodeIfPresent(Double.self, forKey: .amount) {
            amount = amountDouble
        } else if let amountString = try? container.decodeIfPresent(String.self, forKey: .amount),
                  let amountDouble = Double(amountString) {
            amount = amountDouble
        }
        
        // Handle rate as String (since some values like SHIB come as string)
        if let rateDouble = try? container.decodeIfPresent(Double.self, forKey: .rate) {
            rate = String(rateDouble)
        } else {
            rate = try container.decodeIfPresent(String.self, forKey: .rate)
        }
    }
}

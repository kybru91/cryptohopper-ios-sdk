//
//  HopperAPIGetStrategyResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 04/11/2020.
//

import Foundation

class HopperAPIGetStrategyByIdResponse: Codable {
    
    var data : Strategy?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}

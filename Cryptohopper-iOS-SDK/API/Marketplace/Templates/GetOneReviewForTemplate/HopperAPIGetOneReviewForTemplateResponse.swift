//
//  HopperAPIGetOneReviewForTemplateResponse.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 02/11/2020.
//

import Foundation

class HopperAPIGetOneReviewForTemplateResponse: Codable {
    
    var data : MarketReview?
    
    private enum CodingKeys: String, CodingKey {
        case data = "data"
    }
    
}


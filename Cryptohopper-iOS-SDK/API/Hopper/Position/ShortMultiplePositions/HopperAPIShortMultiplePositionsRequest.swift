//
//  HopperAPIShortMultiplePositionsRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIShortMultiplePositionsRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionIds : [Int] ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/short")
        addBodyItem(name: "position_ids", value: positionIds)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}


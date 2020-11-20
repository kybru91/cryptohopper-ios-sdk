//
//  HopperAPIMoveOnePositionToReservedRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 28/10/2020.
//

import Foundation
import UIKit

class HopperAPIMoveOnePositionsToReservedRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String , positionId : Int ) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/movetoreserved/\(positionId)")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

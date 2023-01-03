//
//  HopperAPIGetHopperWhitelistIPRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 03/01/2023.
//

import Foundation

class HopperAPIGetHopperWhitelistIPRequest: HopperAPIRequest<HopperAPIGetHopperWhitelistIPResponse> {
    
    convenience init(hopperId : Int) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/ipwhitelist")
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

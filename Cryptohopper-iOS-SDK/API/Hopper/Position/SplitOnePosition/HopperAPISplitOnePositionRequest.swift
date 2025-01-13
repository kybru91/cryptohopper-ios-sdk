//
//  HopperAPISplitOnePositionRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by Kaan Baris Bayrak on 30/10/2020.
//

import Foundation
import UIKit

class HopperAPISplitOnePositionRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(hopperId : String,positionId : Int, percentage : String?) {
        self.init()
        self.changeUrlPath(path: "/v1" + "/hopper/\(hopperId)/position/split/\(positionId)")
        
        if(percentage != nil){
            addBodyItem(name: "percentage", value: (percentage ?? ""))
        }
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .POST
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

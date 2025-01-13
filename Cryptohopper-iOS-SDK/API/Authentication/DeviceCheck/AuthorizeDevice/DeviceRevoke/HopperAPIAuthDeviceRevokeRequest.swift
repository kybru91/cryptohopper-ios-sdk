//
//  HopperAPIAuthDeviceRevokeRequest.swift
//  Cryptohopper-iOS-SDK
//
//  Created by CH Kaan Bayrak on 21/11/2022.
//

import Foundation
import UIKit

class HopperAPIAuthDeviceRevokeRequest: HopperAPIRequest<HopperCommonMessageResponse> {
    
    convenience init(deviceId : String, secret : String) {
        self.init()
        self.changeUrlPath(path:"/v1" + "/device/\(deviceId)/revoke")
        addQueryItem(name: "secret", value: secret)
    }
    
    override var httpMethod: HopperAPIHttpMethod {
        return .GET
    }
    
    override var needsAuthentication: Bool {
        return true
    }
    
}

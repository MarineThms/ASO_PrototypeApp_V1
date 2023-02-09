//
//  AFP_ASO_SolidaireApp.swift
//  AFP_ASO_Solidaire
//
//  Created by apprenant16 on 03/02/2023.
//

import SwiftUI
import StripeCore

@main
struct AFP_ASO_SolidaireApp: App {
    init() {
            StripeAPI.defaultPublishableKey = "pk_test_51MX3DMHS96iekusSoa56mm6j6pEzz0dcuXVG0Enhcrs40LSTMdtdXI7Q4hgTeCWcsENobADzgmneXDvm1O1Io1Tl00diRHGDhJ"
        }

    
    var body: some Scene {
        WindowGroup {
            ChargementPage()
        }
    }
}


//
//  RotateBadgeSymbol.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 07/06/23.
//

import SwiftUI

struct RotateBadgeSymbol: View {
    
    let angle: Angle
    
    var body: some View {
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
        
    }
}

struct RotateBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotateBadgeSymbol(angle: Angle(degrees: 5))
    }
}

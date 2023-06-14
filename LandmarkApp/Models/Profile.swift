//
//  Profile.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 07/06/23.
//

import Foundation

struct Profile{
    var userName: String
    var prefersNotificaction = true
    var SeasonalPhoto = Season.winter
    var goalDate = Date()
    
    
    static let `default`  = Profile(userName: "SPiDY")
    
    enum Season: String, CaseIterable, Identifiable{
        case spring = "🌼"
        case summer = "☀️"
        case autum = "🍁"
        case winter = "❄️"
        
        var id: String { rawValue }
        
    }
                    
                    
}

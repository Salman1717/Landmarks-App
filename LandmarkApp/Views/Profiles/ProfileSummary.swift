//
//  ProfileSummary.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 07/06/23.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading, spacing: 10){
                Text(profile.userName)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotificaction ? "On" : "Off" )")
                Text("Seasonal Photos: \(profile.SeasonalPhoto.rawValue)")
                Text("Goal Date: ") + Text(profile.goalDate, style: .date)
                
                Divider()
                
                VStack(alignment: .leading){
                    Text("Completed Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal){
                        HStack{
                            HikeBadge(name: "First Hike")
                            HikeBadge(name:"Climber")
                                .hueRotation(Angle(degrees:95))
                            HikeBadge(name: "MileStone")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees:30))
                        }
                        .padding(.bottom)
                    }
                    Divider()
                    VStack(alignment: .leading){
                        Text("Recent Hikes")
                            .font(.headline)
                        
                        HikeView(hike: modelData.hikes[2])
                    }
                }
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}

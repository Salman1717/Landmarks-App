//
//  ProfileEditor.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 08/06/23.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var  profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
        
    }
    
    var body: some View {
        List{
            HStack{
                Text("Username: ").bold()
                Divider()
                TextField("Username", text: $profile.userName)
            }
            
            Toggle(isOn: $profile.prefersNotificaction){
                Text("Enable Notifications").bold()
            }
            
            VStack(alignment: .leading, spacing:20){
                Text("Seasonal Photo").bold()
                
                Picker("Seasonal Photo", selection: $profile.SeasonalPhoto){
                    ForEach(Profile.Season.allCases){season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}

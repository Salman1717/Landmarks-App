//
//  ContentView.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 05/06/23.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}

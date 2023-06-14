//
//  CategoryHome.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 07/06/23.
//

import SwiftUI

struct CategoryHome: View {
    @State private var showingProfile = false
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List{
                PageView(pages: modelData.features.map { FeatureCard(landmarks: $0)})
                    .aspectRatio( 3 / 2 , contentMode: .fit)
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key,
                                items: modelData.categories[key]!
                    )
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Featured")
            .toolbar{
                Button {
                    showingProfile.toggle()
                }label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
                .sheet(isPresented: $showingProfile){
                    ProfileHost()
                        .environmentObject(modelData)
                }
            }
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}

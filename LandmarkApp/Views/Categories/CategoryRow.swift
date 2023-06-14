//
//  CategoryRow.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 07/06/23.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5 )
            
            ScrollView(.horizontal , showsIndicators: false){
                HStack(alignment: .top,
                       spacing: 0){
                    ForEach(items) { landmarks in
                        NavigationLink{
                            LandmarkDetail( landmark: landmarks)
                        } label: { CategoryItem(landmark: landmarks)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(3))
        )
    }
}

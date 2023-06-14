//
//  FeatureCard.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 08/06/23.
//

import SwiftUI


struct FeatureCard: View {
    
    var landmarks: Landmark
    
    var body: some View {
        landmarks.featureImage?
            .resizable()
            .aspectRatio( 3 / 2 , contentMode: .fit)
            .overlay {
                TextOverlay(landmarks: landmarks)
            }
        
    }
}

struct TextOverlay: View {
    var landmarks: Landmark
    
    var gradient: LinearGradient {
        .linearGradient(
                    Gradient(colors: [.black.opacity(0.6), .black.opacity(0)]),
                    startPoint: .bottom,
                    endPoint: .center)
    }
        var body: some View {
            ZStack(alignment: .bottomLeading){
                gradient
                VStack(alignment: .leading){
                    Text(landmarks.name)
                        .font(.title)
                        .bold()
                    Text(landmarks.park)
                }
                .padding()
            }
            .foregroundColor(.white)
        }
    
    }


struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmarks: ModelData().features[0] )
    }
}

//
//  CircleImageView.swift
//  LandmarkApp
//
//  Created by Salman Mhaskar on 05/06/23.
//

import SwiftUI

struct CircleImageView: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 200, height: 200)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 5)
            }
            .shadow(radius: 6)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView(image:  Image("Sunrise"))
    }
}

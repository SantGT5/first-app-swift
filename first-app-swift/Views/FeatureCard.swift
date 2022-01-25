//
//  FeatureCard.swift
//  first-app-swift
//
//  Created by Gian Lucas on 12/11/21.
//

import SwiftUI

struct FeatureCard: View {
    
    var scenery: Scenary
    
    var body: some View {
        scenery.featureImage?
            .resizable()
            .aspectRatio(3/2, contentMode: .fit)
            .overlay(
            TextOverlay(scenery: scenery)
        )
    }
}

struct TextOverlay: View {
    var scenery: Scenary
    var gradient: LinearGradient{
        .linearGradient(
            Gradient(colors: [.black.opacity(0.7), .black.opacity(0)]),
            startPoint: .bottom,
            endPoint: .center
        )
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading){
            gradient
            VStack(alignment: .leading){
                Text(scenery.name)
                    .font(.title)
                    .bold()
                Text(scenery.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(scenery: ModelData().features[0])
    }
}

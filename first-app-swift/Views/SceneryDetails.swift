//
//  SceneryDetails.swift
//  first-app-swift
//
//  Created by Jose Manuel Barba Sánchez on 8/11/21.
//

import SwiftUI

struct SceneryDetails: View {
    var scenery: Scenary
    
    var body: some View {
       VStack{
            MapView(coordinate: scenery.locationCoordinate)
                .ignoresSafeArea(.container, edges: .top)
                .frame(height: 300, alignment: .top)

            CircleImage(image: scenery.image)
                .offset(y: -200)
                .padding(.bottom, -200)
            VStack(alignment: .leading){
                Text(scenery.name)
                    .font(.title)
                HStack {
                    Text(scenery.park)
                    Spacer()
                    Text(scenery.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("Curiosidades de \(scenery.name)")
                    .font(.title2)
                Text(scenery.description)
            }
            .padding()
            Spacer()
        }
        .padding(.top, -60)
        
    }
}

struct SceneryDetails_Previews: PreviewProvider {
    static var previews: some View {
        SceneryDetails(scenery: scenaries[0])
    }
}

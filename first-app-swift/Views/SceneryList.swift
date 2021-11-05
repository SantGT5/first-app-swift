//
//  sceneryList.swift
//  first-app-swift
//
//  Created by Jose Manuel Barba Sánchez on 5/11/21.
//

import SwiftUI

struct SceneryList: View {
    var body: some View {
        NavigationView {
            List(scenaries) {
                scenery in NavigationLink {
                    SceneryDetails(scenery: scenery)
                } label: {
                    TextView(scenary: scenery)
                }
            }
            .navigationTitle("Paisajes")
        }
    }
}

struct SceneryList_Previews: PreviewProvider {
    static var previews: some View {
        SceneryList()
    }
}

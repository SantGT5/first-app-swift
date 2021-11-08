//
//  TextView.swift
//  first-app-swift
//
//  Created by Jose Manuel Barba Sánchez on 8/11/21.
//


import SwiftUI

struct TextView: View {
    
    var scenary: Scenary
    
    var body: some View {
        HStack {
            scenary.image
                .resizable()
                .frame(width:  50, height: 50)
            Text(scenary.name)
            Spacer()
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TextView(scenary: scenaries[3])
            TextView(scenary: scenaries[4])
            TextView(scenary: scenaries[5])
              
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}

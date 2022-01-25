//
//  PageView.swift
//  first-app-swift
//
//  Created by Gian Lucas on 12/11/21.
//

import SwiftUI

struct PageView<Page: View>: View {
    
    var pages: [Page]
    @State private var currentePage = 0
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            PageViewController(pages: pages, currentPage: $currentePage)
            PageControl(numberOfPage: pages.count, currentPage: $currentePage)
                .frame(width: CGFloat(pages.count * 20))
                .padding(.trailing)
        }
        
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map {
            FeatureCard(scenery: $0)
        })
            .aspectRatio(3/2, contentMode: .fit)
    }
}

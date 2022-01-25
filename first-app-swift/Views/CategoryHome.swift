//
//  CategoryHome.swift
//  first-app-swift
//
//  Created by Gian Lucas on 10/11/21.
//

import SwiftUI

struct CategoryHome: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List {
                
                PageView(pages: modelData.features.map{
                    FeatureCard(scenery: $0)
                })
                    .aspectRatio(3/2, contentMode: .fit)
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self){
                    key in
                    
                    CategoryRow(
                        categoryName: key, items: modelData.categories[key]!)
                }
            }
            .navigationTitle("Paisajes")
            
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}

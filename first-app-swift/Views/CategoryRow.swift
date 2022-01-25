//
//  CategoryRow.swift
//  first-app-swift
//
//  Created by Gian Lucas on 10/11/21.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Scenary]
    
    var body: some View {
        VStack (alignment: .leading){
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 10)
                .padding(.top, 7)
            
            ScrollView(.horizontal, showsIndicators: false){
                
                HStack (alignment: .top, spacing: 0){
                    ForEach(items){
                        scenery in
                        NavigationLink{
                            SceneryDetails(scenery: scenery)
                        } label:{
                            CategoryItem(scenery: scenery)
                        }
                    }
                }
            }
            .frame(height: 180)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    
    static var sceneries = ModelData().scenaries
    
    static var previews: some View {
        
        CategoryRow(
            categoryName: sceneries[2].category.rawValue, items: Array(sceneries.prefix(8))
        )
    }
}

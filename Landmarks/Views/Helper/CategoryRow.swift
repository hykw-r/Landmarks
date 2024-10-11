//
//  CategoryRow.swift
//  Landmarks
//
//  Created by hayakawa on 2024/10/11.
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
                .padding(.top, 5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                        CategoryItem(landmark: landmark)
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

#Preview {
    let landmakrs = ModelData().landmarks
    return CategoryRow(
        categoryName: landmakrs[0].category.rawValue,
        items: Array(landmakrs.prefix(4))
    )
}

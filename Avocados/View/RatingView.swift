//
//  RatingView.swift
//  Avocados
//
//  Created by Sergei on 13.04.2021.
//

import SwiftUI

struct RatingView: View {
    
    var recipe: Recipe
    
    var body: some View {
        
        HStack(alignment: .center, spacing: 5){
            ForEach(1...(recipe.rating), id: \.self){_ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(Color.yellow)
            }
        }
    }
    
}

struct RatingView_Previews: PreviewProvider {
    static var previews: some View {
        RatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
 

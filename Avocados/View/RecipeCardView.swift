//
//  RecipeCardView.swift
//  Avocados
//
//  Created by Sergei on 11.04.2021.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(Color.white)
                            .imageScale(.small)
                                .shadow(color: Color.black, radius: 2, x: 0, y: 0)
                                .padding(3)
                            Spacer()
                        }
                        
                    }
                )
            VStack(alignment: .leading, spacing: 12){
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium")
                    )
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(Color.gray)
                    .italic()
                
                RatingView(recipe: recipe)
                
                CookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom,12)
        }
        .background(Color.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0 )
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal, content: {
            RecipeDetailView(recipe: self.recipe)
        })
    }
}

struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipesData[0])
            .previewLayout(.sizeThatFits)
    }
    
}

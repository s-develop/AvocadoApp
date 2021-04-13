//
//  RecipeDetailView.swift
//  Avocados
//
//  Created by Sergei on 13.04.2021.
//

import SwiftUI



struct RecipeDetailView: View {
    
    var recipe : Recipe
    
    @State private var pulsate: Bool = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: true) {
            VStack(alignment: .center, spacing:0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
            }
            
            Group{
                Text(recipe.title)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.top, 10)
               RatingView(recipe: recipe)
                CookingView(recipe: recipe)
                
                Text("Ingredients")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .leading, spacing: 5){
                    ForEach(recipe.ingredients, id: \.self){ item in
                        
                        VStack(alignment: .leading, spacing: 5){
                            Text(item)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            Divider()
                        }
                        
                    }
                }
                
                Text("Instructions")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ForEach(recipe.ingredients, id: \.self){
                    item in
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5){
                        Image(systemName: "chevron.down.circle")
                        
                        Text(item)
                            .lineLimit(nil)
                            .multilineTextAlignment(.center)
                            .font(.system(.body, design: .serif))
                    }
                }
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 12)
            
        }
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack{
                Spacer()
                VStack{
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label:{
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .shadow(radius: 4)
                            .opacity(self.pulsate ? 1 : 0.6)
                            .scaleEffect(self.pulsate ? 1.2 : 0.8, anchor: .center)
                            .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
            .onAppear(){
                self.pulsate.toggle()
            }
        
        )
    }
    
    
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipesData[0])
    }
}

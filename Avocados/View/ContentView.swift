//
//  ContentView.swift
//  Avocados
//
//  Created by Sergei on 07.04.2021.
//

import SwiftUI

struct ContentView: View {
    
    var headers: [Header] = headersData
    
    var facts: [Fact] = factsData
    
    var recipes: [Recipe] = recipesData
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
        VStack(alignment: .center, spacing: 20) {
            
            Text("All about Avocados")
                .modifier(TitleModifier())
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment:.top, spacing: 0) {
                    ForEach(headers) { item in
                        HeaderView(header: item)
                    }
                }
            }
            
            DishesView()
                .frame(maxWidth: 640)
            
            
            Text("Avocado Facts")
                .fontWeight(.bold)
                .modifier(TitleModifier())
            
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 60){
                    ForEach(facts){
                        item in
                        FactsView(fact: item)
                    }
                }
                .padding(.vertical)
                .padding(.leading, 60)
                .padding(.trailing, 20)
            }
                
           Text("Avocado Recipes")
            .fontWeight(.bold)
            .modifier(TitleModifier())
            
            VStack(alignment: .center, spacing: 20){
                ForEach(recipes){ item in
                    RecipeCardView(recipe: item)
                }
            }
            
            VStack(alignment: .center, spacing: 20) {
                Text("All about Avocados")
                    .modifier(TitleModifier())
                
                Text("Everything you wanted to know about avocados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
                    .frame(minHeight: 60)
            }
            .frame(maxWidth: 640)
            .padding()
            .padding(.bottom, 85)
        }
        }
        
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
     content
        .font(.system(.title, design: .serif))
        .padding(8)
        .foregroundColor(Color("ColorGreenMedium"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData, recipes: recipesData )
    }
}

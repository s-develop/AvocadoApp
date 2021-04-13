//
//  RipeningView.swift
//  Avocados
//
//  Created by Sergei on 13.04.2021.
//

import SwiftUI

struct RipeningView: View {
    
    var ripening: Ripening
    
    @State private var slideInAnimation: Bool = false
    
    var body: some View {
        VStack {
            Image(ripening.image)
            .resizable()
            .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .clipShape(Circle())
                .zIndex(1)
                .background(Circle()
                                .fill(Color("ColorGreenLight"))
                                .frame(width: 110, height: 110, alignment: .center)
                )
                .background(Circle()
                                .fill(Color.white)
                                .frame(width: 120, height: 120, alignment: .center)
                )
                .animation(Animation.easeInOut(duration: 1))
                .offset(y: slideInAnimation ? 55 : -55)
       
        
        VStack(alignment: .center, spacing: 10){
            VStack(alignment: .center, spacing: 0){
                
                Text(ripening.stage)
                    .font(.system(.largeTitle, design: .serif))
                    .fontWeight(.bold)
                Text("STAGE")
                    .font(.system(.body, design: .serif))
                    .fontWeight(.heavy)
                    
            }
            .foregroundColor(Color("ColorGreenMedium"))
            .padding(.top, 65)
            .frame(width: 180)
            
            Text(ripening.title)
                .font(.system(.title, design: .serif))
                .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.vertical, 12)
                .padding(.horizontal, 0)
                .frame(width: 220)
                .background(
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6 )
                )
            Spacer()
            Text(ripening.description)
                .foregroundColor(Color("ColorGreenDark"))
                .fontWeight(.bold)
                .lineLimit(nil)
            Spacer()
            
            Text(ripening.ripeness.uppercased())
                    .foregroundColor(Color.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6 )
                    )
            
            
            Text(ripening.instruction)
                .font(.footnote)
                .foregroundColor(Color("ColorGreenLight"))
                .lineLimit(3)
                .frame(width: 160)
            Spacer()
        }
      
        .zIndex(0)
        .multilineTextAlignment(.center)
        .padding(.horizontal)
        .frame(width: 260, height: 485, alignment: .center)
       
        .background(
            
            
            LinearGradient(gradient: Gradient(colors: [Color("ColorGreenLight"), Color("ColorGreenMedium")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(30)
            
        }
      
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.slideInAnimation.toggle()
        })
        
    }
    
}

struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[0])
    }
}

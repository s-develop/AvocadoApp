//
//  AvocadosView.swift
//  Avocados
//
//  Created by Sergei on 09.04.2021.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: Color("ColorBlackTransparentDark"), radius:  12, x: 0, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1 : 0.9)
                .opacity(self.pulsateAnimation ? 1 : 0.9)
                .animation(Animation.easeOut(duration: 1.5).repeatForever(autoreverses: true))
            Text("Avocados")
                .font(.system(size: 42, weight: .bold, design:.serif))
                .foregroundColor(Color.white)
                .padding()
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
            Text("""
Creamy, green, and full of nutrients!
Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .foregroundColor(Color.white)
                .padding()
                .lineSpacing(8)
            
            Spacer()
        }
        .background(
        Image("background")
            .resizable()
            .aspectRatio(contentMode: .fill)
        )
        .edgesIgnoringSafeArea(.all)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}

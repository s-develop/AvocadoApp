//
//  HeaderView.swift
//  Avocados
//
//  Created by Sergei on 09.04.2021.
//

import SwiftUI

struct HeaderView: View {
    
    var header: Header
    
    var body: some View {
        ZStack {
            Image(header.image)
            .resizable()
                .aspectRatio(contentMode: .fill)
            HStack(alignment: .top, spacing: 0) {
                
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack(alignment: .leading, spacing: 6) {  
                    
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    
                    Text("Avocados are a powerhouse ingredient at any meal for anyone.")
                        .font(.footnote)
                        .lineLimit(2)
                        .multilineTextAlignment(.leading)
                         .foregroundColor(Color.white)
                        .shadow(radius: 3)
                }
                .padding(.vertical, 0)
                .padding(.horizontal, 20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }
            .frame(width: 285, height: 105, alignment: .center)
            
        }
        .frame(width: 480, height: 320, alignment: .center)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[0])
            .previewLayout(.sizeThatFits)
        
    }
}

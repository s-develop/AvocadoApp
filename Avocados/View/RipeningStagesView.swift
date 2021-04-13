//
//  RipeningStagesView.swift
//  Avocados
//
//  Created by Sergei on 09.04.2021.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack{
                Spacer()
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningStages){
                        item in
                        RipeningView(ripening: item)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}

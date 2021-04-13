//
//  RipeningModel.swift
//  Avocados
//
//  Created by Sergei on 13.04.2021.
//

import SwiftUI


struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

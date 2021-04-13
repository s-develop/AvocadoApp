//
//  FactModel.swift
//  Avocados
//
//  Created by Sergei on 11.04.2021.
//

import SwiftUI

struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

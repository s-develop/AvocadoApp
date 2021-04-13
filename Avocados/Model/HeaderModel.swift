//
//  HeaderModel.swift
//  Avocados
//
//  Created by Sergei on 09.04.2021.
//

import Foundation

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}


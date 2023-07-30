//
//  ColorPalette.swift
//  ObsersableAndBindable
//
//  Created by David Grammatico on 30/07/2023.
//

import SwiftUI

@Observable
class ColorPalette {
    var color: Color = .primary
    var name: String = ""
    
    
    init(color: Color, name: String) {
        self.color = color
        self.name = name
    }
}

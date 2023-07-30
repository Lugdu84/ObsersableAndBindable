//
//  ColorList.swift
//  ObsersableAndBindable
//
//  Created by David Grammatico on 30/07/2023.
//

import SwiftUI


@Observable class ColorList {
    var colors: [ColorPalette] = []
    
    
    init(colors: [ColorPalette]) {
        self.colors = colors
    }
}

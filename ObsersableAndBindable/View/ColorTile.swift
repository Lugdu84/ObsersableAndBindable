//
//  ColorTile.swift
//  ObsersableAndBindable
//
//  Created by David Grammatico on 30/07/2023.
//

import SwiftUI

struct ColorTile: View {
    @Bindable var palette: ColorPalette
    var body: some View {
        HStack(content: {
            ColorPicker("", selection: $palette.color)
                .labelsHidden()
            TextField("", text: $palette.name)
                .textFieldStyle(.roundedBorder)
        })
    }
}

#Preview {
    ColorTile(palette: ColorPalette(color: .red, name: "Rouge"))
}

//
//  ContentView.swift
//  ObsersableAndBindable
//
//  Created by David Grammatico on 30/07/2023.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var color: Color = .primary
    let model: ColorList = ColorList(colors: [])
    
    var body: some View {
        NavigationStack {
            VStack(content: {
                HStack(content: {
                    TextField("Nom", text: $text)
                        .textFieldStyle(.roundedBorder)
                    ColorPicker("", selection: $color)
                        .labelsHidden()
                })
                .padding()
                Button("Ajouter") {
                    model.colors.append(ColorPalette(color: color, name: text))
                    text = ""
                }.disabled(text.isEmpty)
                Divider()
                ScrollView(.horizontal) {
                    HStack(content: {
                        ForEach(model.colors) { palette in
                            Circle()
                                .frame(width: 30, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .foregroundColor(palette.color)
                        }
                    })
                    .padding()
                }
                Divider()
                List {
                    ForEach(model.colors) { palette in
                        ColorTile(palette: palette)
                    }
                    .onDelete(perform: { indexSet in
                        model.colors.remove(atOffsets: indexSet)
                    })
                }
            })
            .navigationTitle("Observable")
        }
       
    }
}

#Preview {
    ContentView()
}

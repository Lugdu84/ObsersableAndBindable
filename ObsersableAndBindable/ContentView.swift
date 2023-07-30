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
                    
                }
                Divider()
                List {
                    
                }
            })
            .navigationTitle("Observable")
        }
       
    }
}

#Preview {
    ContentView()
}

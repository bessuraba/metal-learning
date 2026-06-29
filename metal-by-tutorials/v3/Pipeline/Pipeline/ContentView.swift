//
//  ContentView.swift
//  Pipeline
//
//  Created by Slava Varda on 28.6.26..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MetalView().border(Color.black, width: 2)
            Text("Hello, Metal!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

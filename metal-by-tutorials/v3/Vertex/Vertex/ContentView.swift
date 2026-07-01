//
//  ContentView.swift
//  Vertex
//
//  Created by Слава Лосев on 30.6.26..
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MetalView()
              .border(Color.black, width: 2)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

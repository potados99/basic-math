//
//  ContentView.swift
//  BasicMathExample
//
//  Created by Potados on 7/14/25.
//

import SwiftUI
import BasicMath

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!").onTapGesture {
                NSLog("1 + 2 is %d.", SomeMathMagic().add(1, 2))
                
                NSLog("Accumulated histories: \n\(SomeMathMagic().histories().count)")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}


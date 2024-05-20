//
//  ContentView.swift
//  MyFirstPackageApp
//
//  Created by Pedro Maria Moreno Gonzalez on 20/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, mundo!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  SwiftUIintro
//
//  Created by Arantza Castro Dessavre on 28/08/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        TabView{
            ContatsView()
                .tabItem {
                    Label("contacts", systemImage: "person.3.fill")
                }
        }
    }
}

#Preview {
    ContentView()
}


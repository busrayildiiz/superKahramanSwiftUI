//
//  ContentView.swift
//  superKahramanSwiftUI
//
//  Created by MacBook Pro on 7.02.2024.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView {
            List(herosList){ hero in
                NavigationLink {
                    DetailView(selectedHero: hero)
                } label: {
                    ListRowView(hero: hero)
                    
                }
                
            }.navigationTitle("Heros Book")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

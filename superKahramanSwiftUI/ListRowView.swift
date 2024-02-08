//
//  ListRowView.swift
//  superKahramanSwiftUI
//
//  Created by MacBook Pro on 8.02.2024.
//

import SwiftUI

struct ListRowView: View {
    var hero : Heros
    var body: some View {
        HStack{
            
            Image(hero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width:100, height: 100, alignment: .center)
                .clipShape(Circle())
            VStack{
                Text(hero.name)
                    .font(.title)
                    .foregroundColor(.blue)
                Text(hero.realName)
                    .foregroundColor(.orange)
                
            }
            
        }
    
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(hero: batman)
    }
}

//
//  imageView.swift
//  superKahramanSwiftUI
//
//  Created by MacBook Pro on 7.02.2024.
//

import SwiftUI

struct ImageView: View {
    
    var image : Image
    
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("superman"))
    }
}

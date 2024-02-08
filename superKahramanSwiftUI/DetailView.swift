//
//  DetailView.swift
//  superKahramanSwiftUI
//
//  Created by MacBook Pro on 7.02.2024.
//

import SwiftUI

struct DetailView: View {
    var selectedHero : Heros
    var body: some View {
        NavigationView {
            
            
            VStack{
                MapView(coordinate: selectedHero.coordinateLocation)
                    .frame( height: UIScreen.main.bounds.height * 0.4)
                    .edgesIgnoringSafeArea(.top)
                ImageView(image:
                            Image(selectedHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.6, height: UIScreen.main.bounds.height * 0.3, alignment: .center).offset(y: UIScreen.main.bounds.height * -0.20)
                
                VStack{
                    HStack{
                        
                        Text(selectedHero.name)
                            .font(.largeTitle)
                            .foregroundColor(.blue)
                            .padding()
                        Spacer()
                        Text(selectedHero.realName)
                            .font(.largeTitle)
                            .foregroundColor(.orange)
                            .padding()
                        
                    }
                    HStack{
                        Text(selectedHero.city)
                            .padding()
                        Spacer()
                        Text(selectedHero.job)
                            .padding()
                    }
                    Text(selectedHero.description)
                    
                }.offset(y: UIScreen.main.bounds.height * -0.27)
                
                
            }.offset(y: UIScreen.main.bounds.height * -0.10)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(selectedHero: superman)
    }
}

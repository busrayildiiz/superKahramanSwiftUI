//
//  Heros.swift
//  superKahramanSwiftUI
//
//  Created by MacBook Pro on 7.02.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Heros : Identifiable{
    
    var id = UUID()
    var name : String
    var city: String
    var imageName : String
    var job: String
    var description : String
    var coordinate : Coordinate
    var realName : String
    
    var coordinateLocation : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: coordinate.latitude, longitude: coordinate.longitude)
    }
}

struct Coordinate {
    var latitude : Double
    var longitude : Double
}

let batman = Heros(name: "Batman", city: "Gotham", imageName: "batman", job: "İş adamı", description:"Batman filminin yıldızı.", coordinate: Coordinate(latitude: 41.8713679, longitude: -87.7669902), realName: "Bruce Wayne")

let spiderman = Heros(name: "Spiderman", city: "Newyork", imageName: "spiderman", job: "Fotoğrafçı", description:"Spiderman filminin yıldızı.", coordinate: Coordinate(latitude: 40.7160119, longitude: -74.0524729), realName: "Peter Parker")

let superman = Heros(name: "Superman", city: "Cansas", imageName: "superman", job: "Gazeteci", description: "Superman filminin yıldızı.", coordinate: Coordinate(latitude: 39.0865207, longitude: -94.7089592), realName: "Clark Kent")

let herosList = [batman, superman, spiderman]

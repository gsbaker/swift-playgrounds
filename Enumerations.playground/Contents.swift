import UIKit

enum CompassPoint {
//    case north
//    case east
//    case south
//    case west
    
    case north, east, south, west
}

//var compassHeading = CompassPoint.west
var compassHeading: CompassPoint = .west

compassHeading = .north

switch compassHeading {
case .north:
    print("I am heading north")
case .east :
    print("I am heading east")
case .south:
    print("I am heading south")
case .west:
    print("I am heading west")
}



enum Genre {
    case animated, action, romance, documentary, biography, thriller
}

struct Movie {
    var name: String
    var releaseYear: Int
    var genre: Genre
}

let movie = Movie(name: "Finding Dory", releaseYear: 2016, genre: .animated)


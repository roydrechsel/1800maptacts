////
////  FloorMaps.swift
////  1800Contacts Map
////
////  Created by Andrew Drechsel on 9/12/19.
////  Copyright © 2019 1-800 Contacts. All rights reserved.
////
//
//import UIKit
//
//struct FloorMaps
//{
//    let title: String
//    let mapImage: UIImage?
//
//    init(title: String, mapImage: UIImage?)
//    {
//        self.title = title
//        self.mapImage = mapImage
//    }
////
////    static let sharedInstance = FloorMaps()
////
////    let firstFloor = UIImage(named: "1stFloor")
////    let secondFloor = UIImage(named: "2ndFloor")
////    let thirdFloor = UIImage(named: "3rdFloor")
////    let fourthFloor = UIImage(named: "4thFloor")
////    let fifthFloor = UIImage(named: "5thFloor")
////
////    let firstFloorSilverLake = UIImage(named: "1stFloorSilverLake")
////    let secondFloorSlickRock = UIImage(named: "2ndFloorSlickrock")
////    let thirdFloorKingsPeak = UIImage(named: "3rdFloorKingsPeak")
////    let fourthFloorAlta = UIImage(named: "4thFloorAlta")
////    let fourthFloorBrighton = UIImage(named: "4thFloorBrightonOpen")
////    let fourthFloorDeerValley = UIImage(named: "4thFloorDeerValley")
////    let fourthFloorSnowbird = UIImage(named: "4thFloorSnowbird")
////    let fourthFloorSolitude = UIImage(named: "4thFloorSolitude")
////    let fourthFloorSundance = UIImage(named: "4thFloorSundance")
////    let fifthFloorArches = UIImage(named: "5thFloorArchesBoardRoom")
////    let fifthFloorBryceCanyon = UIImage(named: "5thFloorBryceCanyon")
////    let fifthFloorCanyonlands = UIImage(named: "5thFloorCanyonlands")
////    let fifthFloorCapitolReef = UIImage(named: "5thFloorCapitolReef")
////    let fifthFloorGoldenSpike = UIImage(named: "5thFloorGoldenSpike")
////    let fifthFloorRainbowBridge = UIImage(named: "5thFloorRainbowBridge")
////    let fifthFloorTimpanogosCave = UIImage(named: "5thFloorTimpanogosCave")
////    let fifthFloorZion = UIImage(named: "5thFloorZionOpen")
//
//
//
//    static func mainMaps() -> [FloorMaps]
//    {
//        return
//        [
//            FloorMaps(title: "1st Floor", mapImage: UIImage(named: "1stFloor")),
//            FloorMaps(title: "2nd Floor", mapImage: UIImage(named: "2ndFloor")),
//            FloorMaps(title: "3rd Floor", mapImage: UIImage(named: "3rdFloor")),
//            FloorMaps(title: "4th Floor", mapImage: UIImage(named: "4thFloor")),
//            FloorMaps(title: "5th Floor", mapImage: UIImage(named: "5thFloor"))
//        ]
//    }
//
//    static func roomSelectedMaps() -> [FloorMaps]
//    {
//        return
//            [
//                FloorMaps(title: "Silver Lake", mapImage: UIImage(named: "1stFloorSilverLake")),
//                FloorMaps(title: "Slickrock", mapImage:   UIImage(named: "2ndFloorSlickrock")),
//                FloorMaps(title: "Kings Peak", mapImage:  UIImage(named: "3rdFloorKingsPeak")),
//                FloorMaps(title: "Alta", mapImage:        UIImage(named: "4thFloorAlta")),
//                FloorMaps(title: "Brighton", mapImage:    UIImage(named: "4thFloorBrightonOpen")),
//                FloorMaps(title: "Deer Valley", mapImage: UIImage(named: "4thFloorDeerValley")),
//                FloorMaps(title: "Snowbird", mapImage:    UIImage(named: "4thFloorSnowbird")),
//                FloorMaps(title: "Solitude", mapImage:    UIImage(named: "4thFloorSolitude")),
//                FloorMaps(title: "Sundance", mapImage:    UIImage(named: "4thFloorSundance")),
//                FloorMaps(title: "Arches", mapImage:      UIImage(named: "5thFloorArchesBoardRoom")),
//                FloorMaps(title: "Bryce Canyon", mapImage:UIImage(named: "5thFloorBryceCanyon")),
//                FloorMaps(title: "Canyonlands", mapImage: UIImage(named: "5thFloorCanyonlands")),
//                FloorMaps(title: "Capitol Reef", mapImage:UIImage(named: "5thFloorCapitolReef")),
//                FloorMaps(title: "Golden Spike", mapImage:UIImage(named: "5thFloorGoldenSpike")),
//                FloorMaps(title: "Rainbow Bridge", mapImage:  UIImage(named: "5thFloorRainbowBridge")),
//                FloorMaps(title: "Timpanogos Cave", mapImage: UIImage(named: "5thFloorTimpanogosCave")),
//                FloorMaps(title: "Zion", mapImage:        UIImage(named: "5thFloorZionOpen"))
//        ]
//    }
//}

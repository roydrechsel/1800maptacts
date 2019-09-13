//
//  ViewController.swift
//  1800Contacts Map
//
//  Created by Andrew Drechsel on 9/12/19.
//  Copyright © 2019 1-800 Contacts. All rights reserved.
//

import UIKit
import CoreLocation

class FloorMapsViewController: UIViewController
{
    @IBOutlet weak var mapImageView: UIImageView!
    @IBOutlet weak var floorLabel: UILabel!
    @IBOutlet weak var roomButtonsView: UIView!
    
    @IBOutlet weak var firstRoomButton: UIButton!
    @IBOutlet weak var secondRoomButton: UIButton!
    @IBOutlet weak var thirdRoomButton: UIButton!
    @IBOutlet weak var fourthRoomButton: UIButton!
    @IBOutlet weak var fifthRoomButton: UIButton!
    @IBOutlet weak var sixthRoomButton: UIButton!
    @IBOutlet weak var seventhRoomButton: UIButton!
    @IBOutlet weak var eighthRoomButton: UIButton!
    
    //create an array of roomButtons that are inside the roomButtonsView and are hidden after each floor is selected
    
    var currentFloor = Floors.Unknown
    var currentAltitude = 0.0
    
    private let locationManager = CLLocationManager()
    
    var delegate: FloorMapsViewControllerDelegate?
    
    enum Floors
    {
        case Unknown
        case First
        case Second
        case Third
        case Fourth
        case Fifth
    }
    
    @IBAction func sideBarButtonTapped(_ sender: Any)
    {
        delegate?.toggleSideBar()
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
//        
        locationManager.requestWhenInUseAuthorization()
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        locationManager.delegate = self as CLLocationManagerDelegate
        
        getFloor(altitude: currentAltitude)
        
        mapImageView.image = UIImage(named: "1stFloor")
    }
    
    
    
    private func getFloor(altitude: Double)
    {

        if (currentAltitude >= 4349.5 && currentAltitude < 4362.5)
        {
            currentFloor = Floors.First
        }
        else if (currentAltitude >= 4362.6 && currentAltitude < 4375.5)
        {
            currentFloor = Floors.Second
        }
        else if (currentAltitude >= 4375.6 && currentAltitude < 4388.5)
        {
            currentFloor = Floors.Third
        }
        else if (currentAltitude >= 4388.6 && currentAltitude < 4401.5)
        {
            currentFloor = Floors.Fourth
        }
        else if (currentAltitude >= 4401.6 && currentAltitude < 4414.5)
        {
            currentFloor = Floors.Fifth
        }
        else
        {
            //TODO
            currentFloor = Floors.Unknown
        }
    }
    
    private func setSpecificFloorComponents(floor: Floors)
    {
//        switch floor
//        {
//        case Floors.First:
//            mapImageView.image =
//        default:
//            <#code#>
//        }
        if currentFloor == Floors.First
        {
            
        }
        else if currentFloor == Floors.Second
        {

        }
        else if currentFloor == Floors.Third
        {

        }
        else if currentFloor == Floors.Fourth
        {

        }
        else if currentFloor == Floors.Fifth
        {

        }
        else
        {

        }
    }
    
    private func generateFloorContent()
    {
        
    }
}

extension FloorMapsViewController: CLLocationManagerDelegate
{
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        if let lastLocation = locations.last
        {
            let altitude = lastLocation.altitude
            currentAltitude = altitude
        }
    }
}

extension FloorMapsViewController: SideBarViewControllerDelegate
{
    func didSelectFloorMap(_ floorMap: FloorMaps)
    {
        mapImageView.image = floorMap.mapImage
        floorLabel.text = floorMap.title
    }
}

protocol FloorMapsViewControllerDelegate
{
    func toggleSideBar()
    func collapseSideBar()
}

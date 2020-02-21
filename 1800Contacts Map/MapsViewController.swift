//
//  MapsViewController.swift
//  1800Contacts Map
//
//  Created by Andrew Drechsel on 9/16/19.
//  Copyright © 2019 1-800 Contacts. All rights reserved.
//

import UIKit


class MapsViewController: UIViewController, UIScrollViewDelegate
{
    @IBOutlet weak var mapImage: UIImageView!
    @IBOutlet weak var floorLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var firstRoomButton: UIButton!
    @IBOutlet weak var secondRoomButton: UIButton!
    @IBOutlet weak var thirdRoomButton: UIButton!
    @IBOutlet weak var fourthRoomButton: UIButton!
    @IBOutlet weak var fifthRoomButton: UIButton!
    @IBOutlet weak var sixthRoomButton: UIButton!
    @IBOutlet weak var seventhRoomButton: UIButton!
    @IBOutlet weak var eighthRoomButton: UIButton!
    @IBOutlet weak var ninthRoomButton: UIButton!
    @IBOutlet var allRoomButtons: [UIButton]!
    
    @IBOutlet weak var firstFloorButton: UIButton!
    @IBOutlet weak var secondFloorButton: UIButton!
    @IBOutlet weak var thirdFloorButton: UIButton!
    @IBOutlet weak var fourthFloorButton: UIButton!
    @IBOutlet weak var fifthFloorButton: UIButton!
    @IBOutlet var allFloorButtons: [UIButton]!
    
    @IBOutlet weak var roomButtonsStackViewOne: UIStackView!
    @IBOutlet weak var roomButtonsStackViewTwo: UIStackView!
    @IBOutlet weak var roomButtonsStackViewThree: UIStackView!
    
    var currentFloor = "1st Floor"
    
    let firstFloor = "1st Floor"
    let secondFloor = "2nd Floor"
    let thirdFloor = "3rd Floor"
    let fourthFloor = "4th Floor"
    let fifthFloor = "5th Floor"
    
    let firstFloorRooms = "Silver Lake"
    let secondFloorRooms = "Slickrock"
    let thirdFloorRooms = "Kings Peak"
    let fourthFloorRooms = ["Alta", "Brighton", "Deer Valley", "Snowbird", "Solitude", "Sundance"]
    let fifthFloorRooms = ["Arches", "Bryce Canyon", "Canyonlands", "Capitol Reef", "Golden Spike", "Rainbow Bridge", "Timpanogos Cave", "Zion"]
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        setRoomButtons(floor: currentFloor)
        floorLabel.text = firstFloor
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 10.0
        
        firstRoomButton.layer.cornerRadius = 4
        secondRoomButton.layer.cornerRadius = 4
        thirdRoomButton.layer.cornerRadius = 4
        fourthRoomButton.layer.cornerRadius = 4
        fifthRoomButton.layer.cornerRadius = 4
        sixthRoomButton.layer.cornerRadius = 4
        seventhRoomButton.layer.cornerRadius = 4
        eighthRoomButton.layer.cornerRadius = 4
        
        firstFloorButton.backgroundColor = UIColor(named: "BetterWay")
        
        setDefaultFloorMap(floor: firstFloor)
    }
    
    func clearSelectedStates(buttons: [UIButton])
    {
        for button in allRoomButtons
        {
            button.isSelected = false
            button.backgroundColor = UIColor.lightGray
        }
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?
    {
        return mapImage
    }
    
    @IBAction func didTapButton(_ sender: UIButton)
    {
        for button in allRoomButtons
        {
            button.backgroundColor = button.tag == sender.tag ? UIColor(named: "BetterWay") : UIColor.lightGray
        }
    }
    
    @IBAction func didTapFloor(_ sender: UIButton)
    {
        for button in allFloorButtons
        {
            button.backgroundColor = button.tag == sender.tag ? UIColor(named: "BetterWay") : UIColor.clear
        }
    }
    
    @IBAction func firstRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case firstFloor:
            mapImage.image = FloorMaps.sharedInstance.firstFloorSilverLake
        case secondFloor:
            mapImage.image = FloorMaps.sharedInstance.secondFloorSlickRock
        case thirdFloor:
            mapImage.image = FloorMaps.sharedInstance.thirdFloorKingsPeak
        case fourthFloor:
            mapImage.image = FloorMaps.sharedInstance.fourthFloorAlta
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorArches
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    @IBAction func secondRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case fourthFloor:
            mapImage.image = FloorMaps.sharedInstance.fourthFloorBrighton
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorBryceCanyon
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    @IBAction func thirdRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case fourthFloor:
            mapImage.image = FloorMaps.sharedInstance.fourthFloorDeerValley
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorCanyonlands
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    @IBAction func fourthRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case fourthFloor:
            mapImage.image = FloorMaps.sharedInstance.fourthFloorSnowbird
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorCapitolReef
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    @IBAction func fifthRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case fourthFloor:
            mapImage.image = FloorMaps.sharedInstance.fourthFloorSolitude
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorGoldenSpike
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    @IBAction func sixthRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case fourthFloor:
            mapImage.image = FloorMaps.sharedInstance.fourthFloorSundance
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorRainbowBridge
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    @IBAction func seventhRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorTimpanogosCave
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    @IBAction func eighthRoomButtonTapped(_ sender: Any)
    {
        switch currentFloor
        {
        case fifthFloor:
            mapImage.image = FloorMaps.sharedInstance.fifthFloorZion
        default:
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
    }
    
    func setRoomButtons(floor: String)
    {
        
        if floor == firstFloor
        {
            configureFirstFloorButtons()
        }
        else if floor == secondFloor
        {
            configureSecondFloorButtons()
        }
        else if floor == thirdFloor
        {
            configureThirdFloorButtons()
        }
        else if floor == fourthFloor
        {
            configureFourthFloorButtons()
        }
        else if floor == fifthFloor
        {
            configureFifthFloorButtons()
        }
    }
    
    func setDefaultFloorMap(floor: String?)
    {
        floorLabel.text = floor
        
        if floor == firstFloor
        {
            floorLabel.text = firstFloor
            mapImage.image = FloorMaps.sharedInstance.firstFloor
        }
        else if floor == secondFloor
        {
            floorLabel.text = secondFloor
            mapImage.image = FloorMaps.sharedInstance.secondFloor
        }
        else if floor == thirdFloor
        {
            floorLabel.text = thirdFloor
            mapImage.image = FloorMaps.sharedInstance.thirdFloor
        }
        else if floor == fourthFloor
        {
            floorLabel.text = fourthFloor
            mapImage.image = FloorMaps.sharedInstance.fourthFloor
        }
        else if floor == fifthFloor
        {
            floorLabel.text = fifthFloor
            mapImage.image = FloorMaps.sharedInstance.fifthFloor
        }
    }
    
    func configureFirstFloorButtons()
    {
        firstRoomButton.setTitle("Silver Lake", for: .normal)
        secondRoomButton.isHidden = true
        thirdRoomButton.isHidden = true
        roomButtonsStackViewTwo.isHidden = true
        roomButtonsStackViewThree.isHidden = true
    }
    
    func configureSecondFloorButtons()
    {
        firstRoomButton.setTitle("Slickrock", for: .normal)
        secondRoomButton.isHidden = true
        thirdRoomButton.isHidden = true
        roomButtonsStackViewTwo.isHidden = true
        roomButtonsStackViewThree.isHidden = true
    }
    
    func configureThirdFloorButtons()
    {
        firstRoomButton.setTitle("Kings Peak", for: .normal)
        secondRoomButton.isHidden = true
        thirdRoomButton.isHidden = true
        roomButtonsStackViewTwo.isHidden = true
        roomButtonsStackViewThree.isHidden = true
    }
    
    func configureFourthFloorButtons()
    {
        secondRoomButton.isHidden = false
        thirdRoomButton.isHidden = false
        roomButtonsStackViewTwo.isHidden = false
        firstRoomButton.setTitle("Alta", for: .normal)
        secondRoomButton.setTitle("Brighton", for: .normal)
        thirdRoomButton.setTitle("Deer Valley", for: .normal)
        fourthRoomButton.setTitle("Snowbird", for: .normal)
        fifthRoomButton.setTitle("Solitude", for: .normal)
        sixthRoomButton.setTitle("Sundance", for: .normal)
        roomButtonsStackViewThree.isHidden = true
    }
    
    func configureFifthFloorButtons()
    {
        secondRoomButton.isHidden = false
        thirdRoomButton.isHidden = false
        roomButtonsStackViewTwo.isHidden = false
        roomButtonsStackViewThree.isHidden = false
        firstRoomButton.setTitle("Arches", for: .normal)
        secondRoomButton.setTitle("Bryce Canyon", for: .normal)
        thirdRoomButton.setTitle("Canyonlands", for: .normal)
        fourthRoomButton.setTitle("Capitol Reef", for: .normal)
        fifthRoomButton.setTitle("Golden Spike", for: .normal)
        sixthRoomButton.setTitle("Rainbow Bridge", for: .normal)
        seventhRoomButton.setTitle("Timpanogos Cave", for: .normal)
        eighthRoomButton.setTitle("Zion", for: .normal)
        ninthRoomButton.isHidden = true
    }
    
    @IBAction func firstFloorButtonTapped(_ sender: Any)
    {
        currentFloor = firstFloor
        setRoomButtons(floor: currentFloor)
        setDefaultFloorMap(floor: currentFloor)
        clearSelectedStates(buttons: allRoomButtons)
    }
    
    @IBAction func secondFloorButtonTapped(_ sender: Any)
    {
        currentFloor = secondFloor
        setRoomButtons(floor: currentFloor)
        setDefaultFloorMap(floor: currentFloor)
        clearSelectedStates(buttons: allRoomButtons)
    }
    
    @IBAction func thirdFloorButtonTapped(_ sender: Any)
    {
        currentFloor = thirdFloor
        setRoomButtons(floor: currentFloor)
        setDefaultFloorMap(floor: currentFloor)
        clearSelectedStates(buttons: allRoomButtons)
    }
    
    @IBAction func fourthFloorButtonTapped(_ sender: Any)
    {
        currentFloor = fourthFloor
        setRoomButtons(floor: currentFloor)
        setDefaultFloorMap(floor: currentFloor)
        clearSelectedStates(buttons: allRoomButtons)
    }
    
    @IBAction func fifthFloorButtonTapped(_ sender: Any)
    {
        currentFloor = fifthFloor
        setRoomButtons(floor: currentFloor)
        setDefaultFloorMap(floor: currentFloor)
        clearSelectedStates(buttons: allRoomButtons)
    }
}

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
    
    @IBOutlet weak var roomButtonsStackViewOne: UIStackView!
    @IBOutlet weak var roomButtonsStackViewTwo: UIStackView!
    @IBOutlet weak var roomButtonsStackViewThree: UIStackView!
    
    var roomButtons: [UIButton]!
    
    let firstFloor = "First Floor"
    let secondFloor = "Second Floor"
    let thirdFloor = "Third Floor"
    let fourthFloor = "Fourth Floor"
    let fifthFloor = "Fifth Floor"
    
    let firstFloorRooms = "Silver Lake"
    let secondFloorRooms = "Slickrock"
    let thirdFloorRooms = "Kings Peak"
    let fourthFloorRooms = ["Alta", "Brighton", "Deer Valley", "Snowbird", "Solitude", "Sundance"]
    let fifthFloorRooms = ["Arches", "Bryce Canyon", "Canyonlands", "Capitol Reef", "Golden Spike", "Rainbow Bridge", "Timpanogos Cave", "Zion"]
    
    override func viewWillAppear(_ animated: Bool)
    {
        super.viewWillAppear(animated)
        
        configureFirstFloorButtons()
        floorLabel.text = firstFloor
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        scrollView.minimumZoomScale = 1.0
        scrollView.maximumZoomScale = 10.0
        
//        for button in roomButtons
//        {
//            button.setTitle(fifthFloorRooms[roomButtons.firstIndex(of: button) ?? 1], for: [])
//        }
        
        setFloorMap(floor: firstFloor)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView?
    {
        return mapImage
    }
    
    @IBAction func firstRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    @IBAction func secondRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    @IBAction func thirdRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    @IBAction func fourthRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    @IBAction func fifthRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    @IBAction func sixthRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    @IBAction func seventhRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    @IBAction func eighthRoomButtonTapped(_ sender: Any)
    {
        
    }
    
    func setRoomButtons(floor: String)
    {
        
        if floor == firstFloor
        {
//            firstRoomButton.titleLabel?.text = "Silver Lake"
//            secondRoomButton.isHidden = true
        }
        else if floor == secondFloor
        {
            mapImage.image = UIImage(named: "2ndFloor")
        }
        else if floor == thirdFloor
        {
            mapImage.image = UIImage(named: "3rdFloor")
        }
        else if floor == fourthFloor
        {
            mapImage.image = UIImage(named: "4thFloor")
        }
        else if floor == fifthFloor
        {
            mapImage.image = UIImage(named: "5thFloor")
        }
    }
    
    func setFloorMap(floor: String?)
    {
        floorLabel.text = floor
        
        if floor == firstFloor
        {
            mapImage.image = UIImage(named: "1stFloor")
        }
        else if floor == secondFloor
        {
            mapImage.image = UIImage(named: "2ndFloor")
        }
        else if floor == thirdFloor
        {
            mapImage.image = UIImage(named: "3rdFloor")
        }
        else if floor == fourthFloor
        {
            mapImage.image = UIImage(named: "4thFloor")
        }
        else if floor == fifthFloor
        {
            mapImage.image = UIImage(named: "5thFloor")
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
}

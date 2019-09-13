//
//  SideBarViewController.swift
//  1800Contacts Map
//
//  Created by Andrew Drechsel on 9/12/19.
//  Copyright © 2019 1-800 Contacts. All rights reserved.
//

import UIKit

class SideBarViewController: UIViewController
{
    @IBOutlet weak var tableView: UITableView!
    
    var delegate: SideBarViewControllerDelegate?
    
    var floorMaps: [FloorMaps]!
    
    enum CellIdentifier
    {
        static let FloorCell = "FloorCell"
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableView.reloadData()
    }
}

extension SideBarViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return floorMaps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.FloorCell, for: indexPath) as! FloorMapsCell
        cell.buildFloorMapsCell(floorMaps[indexPath.row])
        return cell
    }
}

extension SideBarViewController: UITableViewDelegate
{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        let floorMap = floorMaps[indexPath.row]
        delegate?.didSelectFloorMap(floorMap)
    }
}

protocol SideBarViewControllerDelegate
{
    func didSelectFloorMap(_ floorMap: FloorMaps)
}

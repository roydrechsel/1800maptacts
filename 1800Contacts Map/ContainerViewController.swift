////
////  ContainerViewController.swift
////  1800Contacts Map
////
////  Created by Andrew Drechsel on 9/12/19.
////  Copyright © 2019 1-800 Contacts. All rights reserved.
////
//
//import UIKit
//
//class ContainerViewController: UIViewController
//{
//    enum SlideOutState
//    {
//        case sideBarExpanded
//        case sideBarCollapsed
//    }
//
//    var floorMapsNavigationController: UINavigationController!
//    var floorMapsViewController: FloorMapsViewController!
//
//    var currentState: SlideOutState = .sideBarCollapsed
//    {
//        didSet
//        {
//            let shouldShowShadow = currentState != .sideBarCollapsed
//            showShadowForFloorMapsViewController(shouldShowShadow)
//        }
//    }
//
//    var sideBarViewController: SideBarViewController?
//
//    let floorMapsViewExpandedOffset: CGFloat = 90
//
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//
//        floorMapsViewController = UIStoryboard.floorMapsViewController()
//        floorMapsViewController.delegate = self
//        
//        floorMapsNavigationController = UINavigationController(rootViewController: floorMapsViewController)
//        view.addSubview(floorMapsNavigationController.view)
//        addChild(floorMapsNavigationController)
//        
//        floorMapsNavigationController.didMove(toParent: self)
//        
//        let panGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(handlePanGesture(_:)))
//        floorMapsNavigationController.view.addGestureRecognizer(panGestureRecognizer)
//    }
//}
//
//private extension UIStoryboard
//{
//    static func mainStoryboard() -> UIStoryboard { return UIStoryboard(name: "FloorMaps", bundle: Bundle.main) }
//
//    static func floorMapsViewController() -> FloorMapsViewController?
//    {
//        return mainStoryboard().instantiateViewController(withIdentifier: "FloorMapsViewController") as? FloorMapsViewController
//    }
//
//    static func sideBarViewController() -> SideBarViewController?
//    {
//        return mainStoryboard().instantiateViewController(withIdentifier: "SideBarViewController") as? SideBarViewController
//    }
//}
//
//
//
//extension ContainerViewController: FloorMapsViewControllerDelegate
//{
//    func toggleSideBar()
//    {
//        let notAlreadyExpanded = (currentState != .sideBarExpanded)
//        
//        if notAlreadyExpanded
//        {
//            addSideBarViewController()
//        }
//        
//        //another changejalsdjlfakjsldkjfasd
//        animateSideBar(shouldExpand: notAlreadyExpanded)
//    }
//    
//    func addSideBarViewController()
//    {
//        guard sideBarViewController == nil else { return }
//        
//        if let vc = UIStoryboard.sideBarViewController()
//        {
//            vc.floorMaps = FloorMaps.mainMaps()
//            addChildSidePanelController(vc)
//            sideBarViewController = vc
//        }
//    }
//    
//    func animateSideBar(shouldExpand: Bool)
//    {
//        if shouldExpand
//        {
//            currentState = .sideBarExpanded
//            animateFloorMapsXPosition(targetPosition: floorMapsNavigationController.view.frame.width - floorMapsViewExpandedOffset)
//        }
//        else
//        {
//            animateFloorMapsXPosition(targetPosition: 0) { _ in
//                self.currentState = .sideBarCollapsed
//                self.sideBarViewController?.view.removeFromSuperview()
//                self.sideBarViewController = nil
//            }
//        }
//    }
//    
//    func collapseSideBar()
//    {
//        switch currentState
//        {
//        case .sideBarExpanded:
//            toggleSideBar()
//        default:
//            break
//        }
//    }
//    
//    func animateFloorMapsXPosition(targetPosition: CGFloat, completion: ((Bool) -> Void)? = nil)
//    {
//        UIView.animate(withDuration: 0.5,
//                       delay: 0,
//                       usingSpringWithDamping: 0.8,
//                       initialSpringVelocity: 0,
//                       options: .curveEaseInOut, animations: {
//                       self.floorMapsNavigationController.view.frame.origin.x = targetPosition
//        }, completion: completion)
//    }
//    
//    func addChildSidePanelController(_ sideBarController: SideBarViewController)
//    {
//        sideBarController.delegate = floorMapsViewController
//        view.insertSubview(sideBarController.view, at: 0)
//        
//        addChild(sideBarController)
//        sideBarController.didMove(toParent: self)
//    }
//    
//    func showShadowForFloorMapsViewController(_ shouldShowShadow: Bool)
//    {
//        if shouldShowShadow
//        {
//            floorMapsNavigationController.view.layer.shadowOpacity = 0.8
//        }
//        else
//        {
//            floorMapsNavigationController.view.layer.shadowOpacity = 0.0
//        }
//    }
//}
//
//extension ContainerViewController: UIGestureRecognizerDelegate
//{
//    @objc func handlePanGesture(_ recognizer: UIPanGestureRecognizer)
//    {
//        let gestureIsDraggingFromLeftToRight = (recognizer.velocity(in: view).x > 0)
//        
//        switch recognizer.state
//        {
//        case .began:
//            if currentState == .sideBarCollapsed
//            {
//                if gestureIsDraggingFromLeftToRight
//                {
//                    addSideBarViewController()
//                }
//                
//                showShadowForFloorMapsViewController(true)
//            }
//            
//        case .changed:
//            if let rview = recognizer.view
//            {
//                rview.center.x = rview.center.x + recognizer.translation(in: view).x
//                recognizer.setTranslation(CGPoint.zero, in: view)
//            }
//            
//        case .ended:
//            if let _ = sideBarViewController,
//                let rview = recognizer.view
//            {
//                // animate the side panel open or closed based on whether the view
//                // has moved more or less than halfway
//                let hasMovedGreaterThanHalfway = rview.center.x > view.bounds.size.width
//                animateSideBar(shouldExpand: hasMovedGreaterThanHalfway)
//            }
//            
//        default:
//            break
//        }
//    }
//}

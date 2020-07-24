//
//  ContainerController.swift
//  SideMenue
//
//  Created by Margiett Gil on 7/23/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class ContainerController: UIViewController {
    
    //MARK: Properties

    var menuController: UIViewController!
    var centerController: UIViewController!
    var isExpanded = false
    
    //MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHomeController()
     
       // configureMenuController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    //MARK: Handlers
    
    
    func configureHomeController() {
        let homeController = HomeController()
        homeController.delegate = self
      centerController = UINavigationController(rootViewController: homeController)
        
        view.addSubview(centerController.view)
        addChild(centerController)
        centerController.didMove(toParent: self)
        
    }
    
    func configureMenuController() {
        
        if menuController == nil {
            // add our menu controller here
            menuController = MenuController()
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did add menu Controller...")
        }
        
    }
    func showMenuController(shouldExpand: Bool) {
        if shouldExpand {
            // show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                
            }, completion: nil)
        } else {
            
            // hide menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }, completion: nil)
            
        }
    }

}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle() {
        
        // adding the menu controller
        if !isExpanded {
            configureMenuController()
        }
        
        isExpanded = !isExpanded // this is going to change it to the opssite of what it was !
     showMenuController(shouldExpand: isExpanded)
    }
}

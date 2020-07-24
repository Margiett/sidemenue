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
        let controller = UINavigationController(rootViewController: homeController)
        
        view.addSubview(controller.view)
        addChild(controller)
        controller.didMove(toParent: self)
        
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
}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle() {
        configureMenuController()
    }
}

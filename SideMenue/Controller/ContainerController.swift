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

    var menuController: MenuController!
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
    
    override var preferredStatusBarUpdateAnimation: UIStatusBarAnimation {
        return .slide
    }
    override var prefersStatusBarHidden: Bool {
        return isExpanded
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
            menuController.delegate = self
            view.insertSubview(menuController.view, at: 0)
            addChild(menuController)
            menuController.didMove(toParent: self)
            print("Did add menu Controller...")
        }
        
    }
    func animatePanel(shouldExpand: Bool, menuOption: MenuOption?) {
        if shouldExpand {
            // show menu
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = self.centerController.view.frame.width - 80
                
            }, completion: nil)
        } else {
            
            // hide menu
       
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.centerController.view.frame.origin.x = 0
            }) { (_) in
                guard let menuOption = menuOption else { return }
                self.didSelectMenuOption(menuOption: menuOption)
            }
        }
        animateStatusaBar()
    }
    
    // this is where we select each view controller etc.. inbox profile messages 
    func didSelectMenuOption(menuOption: MenuOption) {
        // here we are switching thru our enumarations our enum 
        switch menuOption {
            
        case .Profile:
            print("show profile")
        case .Index:
            print("show index")
        case .Notifications:
            print("show Notifications")
        case .Setting:
            // we should be able to see the pink this is calling the settings view controller
            let controller = SettingController() // is better if we create an instance of SettingsController() so we can pass values from one controller to the next and you wont be able too unless you create an instance of that controller
            let navBarController = UINavigationController(rootViewController: controller)
            navBarController.modalPresentationStyle = .overFullScreen
            present(navBarController, animated: true)
            print("show setting")
        }
    }
    
    func animateStatusaBar() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
            self.setNeedsStatusBarAppearanceUpdate()
    }, completion: nil )
    }

}

extension ContainerController: HomeControllerDelegate {
    func handleMenuToggle(formenuOption menuOption: MenuOption?) {
        // adding the menu controller
              if !isExpanded {
                  configureMenuController()
              }
              
              isExpanded = !isExpanded // this is going to change it to the opssite of what it was !
           animatePanel(shouldExpand: isExpanded, menuOption: menuOption)
        
    }
    
}

//
//  HomeController.swift
//  SideMenue
//
//  Created by Margiett Gil on 7/23/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    //MARK: Properties
    
    var delegate: HomeControllerDelegate?
    
    //MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue // change the color to white 
        configureNavigationBar()
    }
    
    
    
    //MARK: Handlers
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle()
        print("Toggle menu ..")
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .systemPurple
        navigationController?.navigationBar.barStyle = .black // this makes any text show white
        
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .compose, target: self, action: #selector(handleMenuToggle))
        
    }

}


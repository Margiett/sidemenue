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
        view.backgroundColor = .white // change the color to white
        configureNavigationBar()
    }
    
    
    
    //MARK: Handlers
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(formenuOption: nil)
        print("Toggle menu ..")
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .systemGray
        navigationController?.navigationBar.barStyle = .black // this makes any text show white
        
        navigationItem.title = "Side Menu"
        // instead of uploading a picture to your assets you can just upload it programtically 
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.horizontal.3"), style: .plain, target: self, action: #selector(handleMenuToggle))
        
    }

}


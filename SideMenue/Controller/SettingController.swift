//
//  SettingController.swift
//  SideMenue
//
//  Created by Margiett Gil on 8/2/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class SettingController: UIViewController {
    
    
    //MARK: Properties
    
  
    
    
    // MARK: Init
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirgureUI()
        
    }
    
    //MARK: Selector
    @objc func handleDismiss() {
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: Helper Function
    
    func confirgureUI() { //MARK: Ask Alex why is this code not working !!
        view.backgroundColor = .white
        navigationItem.title = "Setting"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleDismiss))
    }
    
    
    
} // the curly for the class 

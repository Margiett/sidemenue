//
//  UserInfoHeader.swift
//  SideMenue
//
//  Created by Margiett Gil on 8/19/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class UserInfoHeader: UIView {
     //MARK: Properties
    
    let profileImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.clipsToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        iv.image = UIImage(named: "") // add pictures in your aspect and put the name of it here ""
        return iv
    }()
       
   
       //MARK: init
   
       
       //MARK: Handler
}

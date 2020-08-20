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
    
    let usernameLabel: UILabel = {
        let label = UILabel()
        label.text = " Add Text here "
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false // what does this do ?
        
        return label
        
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = " enter a email here missing text !!!! Margiett come back"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .orange
        label.translatesAutoresizingMaskIntoConstraints = false

       return label
    }()
       
   
       //MARK: init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let profileImageDimension: CGFloat = 60
        
        
        //MARK: profile Image View
        addSubview(profileImageView)
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        profileImageView.leftAnchor.constraint(equalTo: leftAnchor,constant: 16).isActive = true
        profileImageView.widthAnchor.constraint(equalToConstant: profileImageDimension).isActive = true
        profileImageView.heightAnchor.constraint(equalToConstant: profileImageDimension).isActive = true
        profileImageView.layer.cornerRadius = profileImageDimension / 2
        
        //MARK: constraints for user name label
        addSubview(usernameLabel)
        usernameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor, constant: -10).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 12).isActive = true
        
        
        //MARK: Email Label constrains 
        addSubview(emailLabel)
        usernameLabel.centerYAnchor.constraint(equalTo: profileImageView.centerYAnchor, constant: -10).isActive = true
        usernameLabel.leftAnchor.constraint(equalTo: profileImageView.rightAnchor, constant: 12).isActive = true
        
        
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
       
       //MARK: Handler
}

//
//  MenuOption.swift
//  SideMenue
//
//  Created by Margiett Gil on 7/24/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

enum MenuOption: Int, CustomStringConvertible { // find out what is CustomerStringConvertible ?
    
    case Profile
    case Index
    case Notifications
    case Setting

    var description: String {
        
        switch self {
            
        case .Profile: return "Profile"
            
        case .Index: return "Inbox"
            
        case .Notifications: return "Notifications"
            
        case .Setting: return "Settings"
            
        }
    }
    
    
    
    var image: UIImage {
        
          switch self {
          case .Profile: return UIImage(systemName: "person") ?? UIImage()
          case .Index: return UIImage(systemName: "tray.and.arrow.down") ?? UIImage()
          case .Notifications: return UIImage(systemName: "bell.fill") ?? UIImage()
          case .Setting: return UIImage(systemName: "gear") ?? UIImage()
              
          }
    }
}

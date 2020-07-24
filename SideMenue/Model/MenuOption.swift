//
//  MenuOption.swift
//  SideMenue
//
//  Created by Margiett Gil on 7/24/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

enum MenuOption: Int {
    
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
            
          case .Profile: return UIImage(named: "") ?? UIImage()
          case .Index: return UIImage(named: " ") ?? UIImage()
          case .Notifications: return UIImage(named: "") ?? UIImage()
          case .Setting: return UIImage(named: " ") ?? UIImage()
              
          }
      }
}

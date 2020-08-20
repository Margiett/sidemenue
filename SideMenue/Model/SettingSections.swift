//
//  SettingSections.swift
//  SideMenue
//
//  Created by Margiett Gil on 8/20/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

enum SettingsSection: Int, CaseIterable, CustomStringConvertible  {
    case Social // this is giving the enums values so this would be a value of 0
    case Communications // this would be a value of 1 
    
    var description: String {
        switch self  {
        case .Social: return "Social"
        case .Communications: return "Communications"
        }
    }
}

enum  SocialOptions: Int, CaseIterable, CustomStringConvertible {
    
    
    case editProfil
    case logout
    
    var description: String {
        switch self {
        case .editProfil: return "Edit Profil"
        case .logout: return "Logout"
        }
    }
    
}

enum CommunicationOptions: Int, CaseIterable, CustomStringConvertible {
    case notification
    case email
    case reportCrashes
    
    var description: String {
        switch self {
        case .notification: return "Notifications"
        case .email: return "Email"
        case .reportCrashes: return "Report Crashes"
    
        }
    }
}

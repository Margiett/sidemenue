//
//  SettingSections.swift
//  SideMenue
//
//  Created by Margiett Gil on 8/20/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

// here we will create a protocol so that all the cells do not get the switches
protocol SectionType: CustomStringConvertible {
    var containSwitch: Bool { get }
}

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

enum  SocialOptions: Int, CaseIterable, SectionType { // we can conform to our protocol because we already conform SectionType protocol to CustomStringConvertiable
    
    
    case editProfil
    case logout
    
    var containSwitch: Bool { return false }
    
    var description: String {
        switch self {
        case .editProfil: return "Edit Profil"
        case .logout: return "Logout"
        }
    }
    
}

enum CommunicationOptions: Int, CaseIterable, SectionType {
 
    
    case notification
    case email
    case reportCrashes
    
    var containSwitch: Bool {
        switch self {
        case .notification: return true
        case .email: return true
        case .reportCrashes: return true
        }
    }
    
    var description: String {
        switch self {
        case .notification: return "Notifications"
        case .email: return "Email"
        case .reportCrashes: return "Report Crashes"
    
        }
    }
}



//
//  SettingCell.swift
//  SideMenue
//
//  Created by Margiett Gil on 8/19/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

class SettingCell: UITableViewCell {
    //MARK: properties
    
    var sectionType: SectionType? {
        didSet {
            guard let sectionType = sectionType else { return }
            textLabel?.text = sectionType.description
            switchControl.isHidden = !sectionType.containSwitch
        }
    }
    
    
    // we will be using numerations in order to populate the tableview
    lazy var switchControl: UISwitch = { // we did a lazy variable because if not our selector the handleSwitchAction would not work
        let switchControl = UISwitch()
        switchControl.isOn = true
        switchControl.onTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        
        //MARK: here we are adding the constrains to the switch
        switchControl.translatesAutoresizingMaskIntoConstraints = false
        switchControl.addTarget(self, action: #selector(handleSwitchAction), for: .valueChanged)
        
        
        return switchControl
    }()
    
    //MARK: Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(switchControl)
        switchControl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        switchControl.rightAnchor.constraint(equalTo: rightAnchor, constant: -12).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Selectors
    @objc func handleSwitchAction(sender: UISwitch) {
        // with the sender we will be able to tell if the switch is on or off
        if sender.isOn {
            print("Turned On")
        } else {
            print("Turned off ")
        }
        
    }
    
    //MARK: = Helper functions
}

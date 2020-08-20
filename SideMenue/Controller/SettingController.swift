//
//  SettingController.swift
//  SideMenue
//
//  Created by Margiett Gil on 8/2/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit

private let reuseIdentifier = "SettingCell"

class SettingController: UIViewController {
    
    
    //MARK: Properties
    var tableView: UITableView!
    var userInfoHeader: UserInfoHeader!
    
    
    
    
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
    
    
    func configureTableView() {
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = 60
        
        tableView.register(SettingCell.self, forCellReuseIdentifier: reuseIdentifier)
        view.addSubview(tableView)
        tableView.frame = view.frame
        
        let frame = CGRect(x: 0, y: 88, width: view.frame.width, height: 100)
        userInfoHeader = UserInfoHeader(frame: frame)
         tableView.tableHeaderView = userInfoHeader // This line of code is what makes the users name and email pop up
         tableView.tableFooterView = UIView() // Not sure why i need this line of code here !! 
        
    }
    
    
    func confirgureUI() { //MARK: Might need to put this on the appDelegate because thats where it will control the navigation bar for the whole app
        
        configureTableView()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        navigationItem.title = "Testing"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleDismiss))
    }
    
    
} // the curly for the class 

//MARK: Extensions

extension SettingController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingsSection.allCases.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        //MARK: this is hard coding for the values that i wanted to show but i should not hardcode due to the fact that if i want to add more sections in our enum it wont show because is hardcoded

//        switch section {
//        case 0: return 2
//        case 1: return 3
//        default: return 0
//        }
        
        guard let section = SettingsSection(rawValue: section) else { return 0 }
        
                switch section {
                case .Social : return SocialOptions.allCases.count
                case .Communications: return CommunicationOptions.allCases.count
                
                }
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red: 55/255, green: 120/255, blue: 250/255, alpha: 1)
        print("Section is \(section)")
        
        let title = UILabel()
        title.font = UIFont.boldSystemFont(ofSize: 16)
        title.textColor = .white
        title.text = SettingsSection(rawValue: section)?.description // here we are calling the enum in our settingcell file
        
        
        
        //MARK: adding constraints to the title label
        view.addSubview(title)
        title.translatesAutoresizingMaskIntoConstraints = false // this activates the programatically contrains
        title.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        title.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        return view
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! SettingCell
        
        
        //MARK: delete this soon this is for testing 
//        switch indexPath.section {
//        case 0: cell.backgroundColor = .orange
//        case 1: cell.backgroundColor = .lightGray
//        default: break
//        }
        
        guard let section = SettingsSection(rawValue: indexPath.section) else { return UITableViewCell() }
               
                       switch section {
                       case .Social :
                        let social = SocialOptions(rawValue: indexPath.row)
                        cell.textLabel?.text = social?.description
                       case .Communications:
                        let communications = CommunicationOptions(rawValue: indexPath.row)
                        cell.textLabel?.text = communications?.description
                       
                       }
        
        return cell
        
    }
    
  
}

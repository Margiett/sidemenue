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
        tableView.tableHeaderView = userInfoHeader
        tableView.tableFooterView = UIView()
        
    }
    
    
    func confirgureUI() { //MARK: Might need to put this on the appDelegate because thats where it will control the navigation bar for the whole app
        
        configureTableView()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barStyle = .black
        view.backgroundColor = .white
        navigationItem.title = "Setting"
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(handleDismiss))
    }
    
    
    
    
    
    
} // the curly for the class 

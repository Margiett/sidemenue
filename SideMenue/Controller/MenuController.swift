//
//  MenuController.swift
//  SideMenue
//
//  Created by Margiett Gil on 7/23/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit


private let reuseIdentifer = "MenuOptionCell"

class MenuController: UIViewController {

    //MARK: Properties
    
    var tableView: UITableView!
    
    //MARK: Init
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    //MARK: Handlers
    
    func configureTableView(){
        tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MenuOptionCell.self, forCellReuseIdentifier: reuseIdentifer)
    }
    
    
}

extension MenuController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifer, for: indexPath) as! MenuOptionCell
        return cell
    }
}

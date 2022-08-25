//
//  CatsListVC.swift
//  Cats&Tables
//
//  Created by Consultant on 8/25/22.
//

import UIKit

class CatsListVC: UIViewController {
    var tableView = UITableView()
    var cats: [Cat] = []
    let catCell = "catCell"
    override func viewDidLoad() {
        view.backgroundColor = .green
        title = "Cats in the World"
        configureTableView()
        setTableViewDelegates()
        cats = fetchData()
        super.viewDidLoad()
        
    }
    
    func configureTableView() {
        //adding tableView to VC
        view.addSubview(tableView)
        tableView.rowHeight = 150
        tableView.register(CatTableViewCell.self, forCellReuseIdentifier: catCell)
        tableView.pin(view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    
    
    
    
    
    

}




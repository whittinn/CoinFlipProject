//
//  CryptoViewController.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/30/22.
//

import UIKit

class CryptoTableViewController: UIViewController {
    
    var vm = ViewModel()
    let customTableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchCryptoData()
        title = "Cryptocurrency"
        setTableView()
        setNavigationBar()
        
        
    }
    //Fetched data from RESTFUL API.
    func fetchCryptoData(){
        vm.getCryptoInfo { data in
            if data != nil{
                //Updates tableview using the main thread, prevents UI freeze.
                DispatchQueue.main.async {
                    self.customTableView.reloadData()
                }
            }
        }
    }
    
    func setNavigationBar(){
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.red]
        
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
    }
    
    func setTableView(){
        customTableView.translatesAutoresizingMaskIntoConstraints = false
        customTableView.dataSource = self
        customTableView.delegate = self
        customTableView.register(CryptoTableViewCell.self, forCellReuseIdentifier: "cell")
        customTableView.backgroundColor = .systemMint
        view.addSubview(customTableView)
        
        customTableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        customTableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        customTableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        customTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
}



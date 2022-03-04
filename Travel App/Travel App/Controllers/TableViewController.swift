//
//  ViewController.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView?
    
    
    let tabBarVC = UITabBarController()
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        tableView?.delegate = self
//        tableView?.dataSource = self
//        tableView?.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionTableViewCell")
//        tableView?.register(UINib(nibName: "CommendTableViewCell", bundle: nil), forCellReuseIdentifier: "CommendTableViewCell")
//        tableView?.register(UINib(nibName: "FollowTableViewCell", bundle: nil), forCellReuseIdentifier: "FollowTableViewCell")
        navigationItem.title = "Activity"
        let items = ["You", "Following"]
        let segmentedController = UISegmentedControl(items: items)
        
        segmentedController.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(segmentedController)
        
        let margins = view.layoutMarginsGuide
        NSLayoutConstraint.activate([
            segmentedController.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
            segmentedController.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
            segmentedController.topAnchor.constraint(equalTo: margins.topAnchor)
        ])
    }
}

//extension TableViewController: UITableViewDelegate, UITableViewDataSource{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 21
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//    }
//
//
//}

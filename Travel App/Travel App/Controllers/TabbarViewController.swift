//
//  TabbarViewController.swift
//  Travel App
//
//  Created by Emre Alpago on 4.03.2022.
//

import UIKit

class TabbarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.delegate = self
    }
}


extension TabbarViewController: UITabBarControllerDelegate {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let tableView = storyBoard.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController
        let tableViewBarItem = UITabBarItem(title: "Table View", image: UIImage(named: "icons8-notification-50"), selectedImage: UIImage(named: "icons8-notification-50"))
        
        tableView.tabBarItem = tableViewBarItem
        
        let collectionView = storyBoard.instantiateViewController(withIdentifier: "CollectionViewController") as! CollectionViewController
        let collectionViewBarItem = UITabBarItem(title: "Collection View", image: UIImage(named: "icons8-home-50"), selectedImage: UIImage(named: "icons8-home-50"))
        
        collectionView.tabBarItem = collectionViewBarItem
        
        self.viewControllers = [tableView,collectionView]
    }
    
}

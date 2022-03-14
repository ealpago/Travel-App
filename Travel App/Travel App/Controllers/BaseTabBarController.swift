//
//  BaseTabBarController.swift
//  Travel App
//
//  Created by Emre Alpago on 4.03.2022.
//

import Foundation
import UIKit

enum TabbarItemType {
    case tableView
    case collectionView
    
//    func name() -> String{
//        switch self{
//        case .tableView:
//            return "Home"
//        case .collectionView:
//            return "Collection"
//        }
//    }
    
    func image() -> UIImage{
        switch self{
        case .tableView:
            return UIImage(named: "notification")!
        case .collectionView:
            return UIImage(named: "home")!
        }
    }
    
    func selectedImage() -> UIImage{
        switch self{
        case .tableView:
            return UIImage(named: "notification")!
        case .collectionView:
            return UIImage(named: "home")!
        }
    }
    
    
}


class BaseTabBarController: UITabBarController{
    
    var items:[TabbarItemType] {
        get {
            return [.tableView,.collectionView]
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    func setupTabBar(){
        var viewControllers:[UIViewController] = []
        // TODO: Generic storyBoard ViewController al
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        items.forEach { item in
            var vc = UIViewController()
            switch item{
            case .tableView:
                vc = storyBoard.instantiateViewController(withIdentifier: IdentifierConstants.shared.tableViewStoryBoardIdentifier) as! TableViewController
            case .collectionView:
                vc = storyBoard.instantiateViewController(withIdentifier: IdentifierConstants.shared.collectionViewSotyBoardIdentifier) as! CollectionViewController
            }
            let tabbarItem = UITabBarItem(title: nil, image: item.image(), selectedImage: item.selectedImage())
            vc.tabBarItem = tabbarItem
            viewControllers.append(vc)
        }
        
        setViewControllers(viewControllers, animated: true)
        
    }
    
}

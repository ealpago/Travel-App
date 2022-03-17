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
    case redView
    case purpleView
    case brownView
    
    func image() -> UIImage{
        switch self{
        case .tableView:
            return UIImage(named: "notification")!
        case .collectionView:
            return UIImage(named: "home")!
        case .redView:
            return UIImage(named: "gallery")!
        case .purpleView:
            return UIImage(named: "location")!
        case .brownView:
            return UIImage(named: "profile")!
        }
    }
    
    func selectedImage() -> UIImage{
        switch self{
        case .tableView:
            return UIImage(named: "notification")!
        case .collectionView:
            return UIImage(named: "home")!
        case .redView:
            return UIImage(named: "gallery")!
        case .purpleView:
            return UIImage(named: "location")!
        case .brownView:
            return UIImage(named: "profile")!
        }
    }
}

class BaseTabBarController: UITabBarController{
    
    var items:[TabbarItemType] {
        get {
            return [.collectionView,.redView,.purpleView,.tableView,.brownView]
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        UITabBar.appearance().tintColor = UIColor.black
        tabBar.selectionIndicatorImage = UIImage().createSelectionIndicator(color: ColorConstants.shared.tabbarTintColor, size: CGSize(width: tabBar.frame.width/CGFloat(tabBar.items!.count), height: tabBar.frame.height), lineWidth: 3.0)
        tabBar.items?[3].badgeValue = "1"
        UITabBarItem.appearance().badgeColor = ColorConstants.shared.tabbarTintColor
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
                vc = storyBoard.instantiateViewController(withIdentifier: IdentifierConstants.shared.collectionViewStoryBoardIdentifier) as! CollectionViewController
            case .redView:
                vc = storyBoard.instantiateViewController(withIdentifier: IdentifierConstants.shared.redViewStoryBoardIdentifier) as! RedViewController
            case .purpleView:
                vc = storyBoard.instantiateViewController(withIdentifier: IdentifierConstants.shared.purpleStoryBoardIdentifier) as! PurpleViewController
            case .brownView:
                vc = storyBoard.instantiateViewController(withIdentifier: IdentifierConstants.shared.brownStroyBoardIdentifier) as! BrownViewController
            }
            let tabbarItem = UITabBarItem(title: nil, image: item.image(), selectedImage: item.selectedImage())
            vc.tabBarItem = tabbarItem
            viewControllers.append(vc)
        }
        setViewControllers(viewControllers, animated: true)
    }
}

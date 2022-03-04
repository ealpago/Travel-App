//
//  ViewController.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class ViewController: UIViewController {

    let tableView = UITableView(frame: .zero,style: .plain)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
        
//        let stackView = UIStackView(arrangedSubviews: [
//        ])
        
    }
    
//    func createSegmentedController(){
//        let items = ["You", "Following"]
//        let segmentedController = UISegmentedControl(items: items)
//
//        segmentedController.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(segmentedController)
//
//        let margins = view.layoutMarginsGuide
//        NSLayoutConstraint.activate([
//           segmentedController.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
//           segmentedController.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
//           segmentedController.topAnchor.constraint(equalTo: margins.topAnchor)
//        ])
//
//
//    }
}


//
//  ViewController.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class TableViewController: UIViewController {
    
    
    @IBOutlet var tableView: UITableView?
    @IBOutlet var segmentControl: UISegmentedControl?
    
    
    var cells:[TableViewModel] = []
    
    let tabBarVC = UITabBarController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionTableViewCell")
        tableView?.register(UINib(nibName: "CommendTableViewCell", bundle: nil), forCellReuseIdentifier: "CommendTableViewCell")
        tableView?.register(UINib(nibName: "FollowTableViewCell", bundle: nil), forCellReuseIdentifier: "FollowTableViewCell")
        
        let commentItems = [TableViewItemModel(cellType: .comment, profileImage: "face1", likedImageView: nil, nameLabel: "Emre Alpago", timeLabel: "1m ago", explanationLabel: "Comment", commentLabel: "Deneme121212121212")]
        let collectionItems = [TableViewItemModel(cellType: .collection, profileImage: "face2", likedImageView: nil, nameLabel: "Emre Alpago", timeLabel: "2 weeks ago", explanationLabel: "Collection", commentLabel: nil)]
        let followItems = [TableViewItemModel(cellType: .follow, profileImage: "face3", likedImageView: nil, nameLabel: "Emre Alpago", timeLabel: "1 weeks ago", explanationLabel: "Likes", commentLabel: nil)]

        
        cells.append(TableViewModel(items: commentItems))
        cells.append(TableViewModel(items: collectionItems))
        cells.append(TableViewModel(items: followItems))
        
        navigationItem.title = "Activity"
//        let items = ["You", "Following"]
//        let segmentedController = UISegmentedControl(items: items)
//
//        segmentedController.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(segmentedController)
//
//        let margins = view.layoutMarginsGuide
//        NSLayoutConstraint.activate([
//            segmentedController.leadingAnchor.constraint(equalTo: margins.leadingAnchor),
//            segmentedController.trailingAnchor.constraint(equalTo: margins.trailingAnchor),
//            segmentedController.topAnchor.constraint(equalTo: margins.topAnchor)
//        ])
    }
}
//
extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (cells[section].items.count)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let itemModel = cells[indexPath.section].items[indexPath.row]
        switch itemModel?.cellType {
        case .comment:
            let cell = tableView.dequeueReusableCell(withIdentifier: CommendTableViewCell.identifier, for: indexPath) as! CommendTableViewCell
            let cellModel = cells[indexPath.section].items[indexPath.row]!
            cell.setupCell(cellModel: cellModel)
            return cell
        case .collection:
            let cell = tableView.dequeueReusableCell(withIdentifier: CollectionTableViewCell.identifier, for: indexPath) as! CollectionTableViewCell
            let cellModel = cells[indexPath.section].items[indexPath.row]!
            cell.setupCell(cellModel: cellModel)
            return cell
        case .follow:
            let cell = tableView.dequeueReusableCell(withIdentifier: FollowTableViewCell.identifier, for: indexPath) as! FollowTableViewCell
            let cellModel = cells[indexPath.section].items[indexPath.row]!
            cell.setupCell(cellModel: cellModel)
            return cell
        case .none:
            return UITableViewCell()
        }
    }
}

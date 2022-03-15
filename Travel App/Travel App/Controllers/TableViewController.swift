//
//  ViewController.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet var activityLabel: UILabel!
    @IBOutlet var tableView: UITableView?
    @IBOutlet var segmentControl: UISegmentedControl?
    
    var cells:[TableViewModel] = []
    //dynamic cell için
    var imageArray = [Results]()
    
    let tabBarVC = UITabBarController()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityLabel.textColor = ColorConstants.shared.nameLabelColor
        
        tableView?.delegate = self
        tableView?.dataSource = self
        tableView?.register(UINib(nibName: "CollectionTableViewCell", bundle: nil), forCellReuseIdentifier: "CollectionTableViewCell")
        tableView?.register(UINib(nibName: "CommendTableViewCell", bundle: nil), forCellReuseIdentifier: "CommendTableViewCell")
        tableView?.register(UINib(nibName: "FollowTableViewCell", bundle: nil), forCellReuseIdentifier: "FollowTableViewCell")
        
        let collectionItems = [TableViewItemModel(cellType: .collection, profileImage: "face1", likedImageView: nil, nameLabel: "Cecilia McGee", timeLabel: "10min ago", explanationLabel: "liked 4 your photos", commentLabel: nil)]
        
        let followItems = [TableViewItemModel(cellType: .follow, profileImage: "face3", likedImageView: nil, nameLabel: "Jennie Dean", timeLabel: "1h ago", explanationLabel: "started following you", commentLabel: nil)]
        
        let commentItems = [TableViewItemModel(cellType: .comment, profileImage: "face2", likedImageView: "deneme", nameLabel: "Isaiah Bryan", timeLabel: "2 days ago", explanationLabel: "leave you a comment:", commentLabel: "So you’re going abroad, you’ve chosen your destination and you have to choose a hotel.So you’re going abroad, you’ve chosen your destination and you have to choose a hotel.So you’re going abroad, you’ve chosen your destination and you have to choose a hotel.So you’re going abroad, you’ve chosen your destination and you have to choose a hotel.So you’re going abroad, you’ve chosen your destination and you have to choose a hotel.")]
        
        cells.append(TableViewModel(items: collectionItems))
        cells.append(TableViewModel(items: followItems))
        cells.append(TableViewModel(items: commentItems))
        
        managingData(query: "nature")
    }
    
    func managingData(query:String){
        NetworkManager.service.request(requestRoute: .query(query: query), responseModel: UnsplashResponse.self) { [self] details in
            imageArray = details.results ?? []
        }
    }
}

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

//
//  CollectionTableViewCell.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class CollectionTableViewCell: UITableViewCell {
    
    static let identifier = "CollectionTableViewCell"
    
    var cells:[LikedCollectionViewModel] = []

   
    @IBOutlet var profileImage: UIImageView?
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var explanationLabel: UILabel?
    @IBOutlet var timeLabel: UILabel?
    @IBOutlet var likedCollectionView: UICollectionView?
    private var itemModel: TableViewItemModel?

    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let likedCollectionItems = [LikedCollectionViewItemModel(likedImageView: "deneme"),LikedCollectionViewItemModel(likedImageView: "deneme"),LikedCollectionViewItemModel(likedImageView: "deneme"),LikedCollectionViewItemModel(likedImageView: "deneme"),LikedCollectionViewItemModel(likedImageView: "deneme")]
        
        cells.append(LikedCollectionViewModel(items: likedCollectionItems))
        
        likedCollectionView?.register(LikedPhotosCollectionViewCell.nib(), forCellWithReuseIdentifier: LikedPhotosCollectionViewCell.identifier)
        likedCollectionView?.delegate = self
        likedCollectionView?.dataSource = self
        
        self.profileImage?.layer.masksToBounds = true
        self.profileImage?.layer.cornerRadius = self.profileImage!.frame.width/2.0
       
        likedCollectionView?.reloadData()
    }

    
    
    func setupCell(cellModel: TableViewItemModel) {
        itemModel = cellModel
        if let itemModel = self.itemModel {
            profileImage?.image = UIImage(named: itemModel.profileImage ?? "")
            nameLabel?.text = itemModel.nameLabel
            explanationLabel?.text = itemModel.explanationLabel
            timeLabel?.text = itemModel.timeLabel
        }
    }
}

extension CollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cells[section].items.count
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return cells.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = likedCollectionView?.dequeueReusableCell(withReuseIdentifier: LikedPhotosCollectionViewCell.identifier, for: indexPath) as! LikedPhotosCollectionViewCell
        let cellModel = cells[indexPath.section].items[indexPath.row]!
        cell.setupCell(cellModel: cellModel)
        return cell
    }
    
}

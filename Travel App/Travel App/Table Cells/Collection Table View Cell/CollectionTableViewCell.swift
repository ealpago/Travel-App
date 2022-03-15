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
        
        likedCollectionView?.register(LikedPhotosCollectionViewCell.nib(), forCellWithReuseIdentifier: LikedPhotosCollectionViewCell.identifier)
        likedCollectionView?.delegate = self
        likedCollectionView?.dataSource = self
        
        self.profileImage?.layer.masksToBounds = true
        self.profileImage?.layer.cornerRadius = self.profileImage!.frame.width/2.0
        
        likedCollectionView?.reloadData()
        self.nameLabel?.textColor = ColorConstants.shared.nameLabelColor
        self.explanationLabel?.textColor = ColorConstants.shared.explanationLabelColor
        self.timeLabel?.textColor = ColorConstants.shared.timeLabelColor
        
        managingData(query: "nature")
    }
    
    func managingData(query:String){
        NetworkManager.service.request(requestRoute: .query(query: query), responseModel: UnsplashResponse.self) { [weak self] details in
            guard let result = details.results else {return}
            guard let self = self else {return}
            var likedArray:[LikedCollectionViewItemModel] = []
            
            for item in result {
                let likedModel = LikedCollectionViewItemModel(likedImageView: item.urls?.regular)
                likedArray.append(likedModel)
            }
            self.cells.append(LikedCollectionViewModel(items: likedArray))
            
            DispatchQueue.main.async {
                self.likedCollectionView?.reloadData()
            }
        }
    }
    
    func setupCell(cellModel: TableViewItemModel){
        itemModel = cellModel
        if let itemModel = self.itemModel {
            DispatchQueue.main.async {
                let imageUrlPath = itemModel.profileImage ?? ""
                guard let imageUrl = URL(string: imageUrlPath) else {return}
                self.profileImage?.downloaded(from:imageUrl)
            }
            nameLabel?.text = itemModel.nameLabel
            explanationLabel?.text = itemModel.explanationLabel
            timeLabel?.text = itemModel.timeLabel
        }
    }
}

extension CollectionTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
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
        cell.topImageView?.layer.cornerRadius = cell.frame.size.height/6
        cell.bottomImageView?.layer.cornerRadius = cell.frame.size.height/6
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-150)/3
        return CGSize(width: size, height: size)
    }
}

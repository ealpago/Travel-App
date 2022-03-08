//
//  LikedPhotosCollectionViewCell.swift
//  Travel App
//
//  Created by Emre Alpago on 7.03.2022.
//

import UIKit

class LikedPhotosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var topImageView: UIImageView?
    @IBOutlet var bottomImageView: UIImageView?
    private var itemModel: LikedCollectionViewItemModel?
    
    static let identifier = "LikedPhotosCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: "LikedPhotosCollectionViewCell", bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }
    
    
    func setupCell(cellModel: LikedCollectionViewItemModel) {
        itemModel = cellModel
        if let itemModel = self.itemModel {
            topImageView?.image = UIImage(named: itemModel.likedImageView ?? "")
            bottomImageView?.image = UIImage(named: itemModel.likedImageView ?? "")
        }
        
    }
    
}

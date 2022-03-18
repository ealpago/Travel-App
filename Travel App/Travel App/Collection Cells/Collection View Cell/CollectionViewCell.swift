//
//  CollectionViewCollectionViewCell.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    static let collectionCellIdentifier = "CollectionViewCell"
    
    @IBOutlet var profileImageView: UIImageView?
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var minuteLabel: UILabel?
    @IBOutlet var topStackViewButton: UIButton?
    
    @IBOutlet var mainImageView: UIImageView?
    
    @IBOutlet var likeButton: UIButton?
    @IBOutlet var commentButton: UIButton?
    @IBOutlet var shareButton: UIButton?
    
    @IBOutlet var likeCountButton: UIButton?
    @IBOutlet var likeLabel: UILabel?
    
    @IBOutlet var mainLabel: UILabel?
    
    @IBOutlet var commentLabel: UILabel?
    @IBOutlet var seeCommentButton: UIButton?
    
    private var itemModel: CollectionViewItemModel?
    
    
    override func awakeFromNib(){
        super.awakeFromNib()
        // Initialization code
        self.profileImageView?.layer.masksToBounds = true
        self.profileImageView?.layer.cornerRadius = self.profileImageView!.frame.width/2.0
        self.mainImageView?.layer.masksToBounds = true
        self.mainImageView?.layer.cornerRadius = self.mainImageView!.frame.width/10.0
        nameLabel?.textColor = ColorConstants.shared.nameLabelColor
        minuteLabel?.textColor = ColorConstants.shared.timeLabelColor
        likeLabel?.textColor = ColorConstants.shared.commentLabelColor
        mainLabel?.textColor = ColorConstants.shared.explanationLabelColor
        commentLabel?.textColor = ColorConstants.shared.seeCommendLabelColor
    }
    
    func setupCell(cellModel: CollectionViewItemModel) {
        itemModel = cellModel
        if let itemModel = self.itemModel {
            DispatchQueue.main.async {
                let profileImageUrlPath = itemModel.profileImage ?? ""
                let mainImageUrlPath = itemModel.mainImage ?? ""
                guard let profileImageUrl = URL(string: profileImageUrlPath) else {return}
                guard let mainImageUrl = URL(string: mainImageUrlPath) else {return}
                self.profileImageView?.downloaded(from: profileImageUrl)
                self.mainImageView?.downloaded(from: mainImageUrl)
            }
            nameLabel?.text = itemModel.nameLabel
            minuteLabel?.text = itemModel.timeLabel
            likeLabel?.text = itemModel.likesLabel
            mainLabel?.text = itemModel.captionLabel
            commentLabel?.text = itemModel.commentsLabel
        }
    }
}

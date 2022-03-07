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
    
    
    override func awakeFromNib(){
        super.awakeFromNib()
        // Initialization code
        self.profileImageView?.layer.masksToBounds = true
        self.profileImageView?.layer.cornerRadius = self.profileImageView!.frame.width/2.0
    }
}

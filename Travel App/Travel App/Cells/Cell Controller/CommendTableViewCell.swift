//
//  CommendTableViewCell.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class CommendTableViewCell: UITableViewCell {
    
    static let identifier = "CommendTableViewCell"
    
    @IBOutlet var profileImage: UIImageView?
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var explanationLabel: UILabel?
    @IBOutlet var commentLabel: UILabel?
    @IBOutlet var timeLabel: UILabel?
    @IBOutlet var likedImageLabel: UIImageView?
    private var itemModel: TableViewItemModel?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(cellModel: TableViewItemModel) {
        itemModel = cellModel
        if let itemModel = self.itemModel {
            profileImage?.image = UIImage(named: itemModel.profileImage ?? "")
            nameLabel?.text = itemModel.nameLabel
            explanationLabel?.text = itemModel.explanationLabel
            commentLabel?.text = itemModel.commentLabel
            timeLabel?.text = itemModel.timeLabel
            likedImageLabel?.image = UIImage(named: itemModel.likedImageView ?? "")
        }
    }
    
    
}

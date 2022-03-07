//
//  FollowTableViewCell.swift
//  Travel App
//
//  Created by Emre Alpago on 3.03.2022.
//

import UIKit

class FollowTableViewCell: UITableViewCell {
    
    static let identifier = "FollowTableViewCell"

    @IBOutlet var profileImage: UIImageView?
    @IBOutlet var nameLabel: UILabel?
    @IBOutlet var explanationLabel: UILabel?
    @IBOutlet var timeLabel: UILabel?
    private var itemModel: TableViewItemModel?

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.profileImage?.layer.masksToBounds = true
        self.profileImage?.layer.cornerRadius = self.profileImage!.frame.width/2.0
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

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
    private var resultModel: Results?

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.profileImage?.layer.masksToBounds = true
        self.profileImage?.layer.cornerRadius = self.profileImage!.frame.width/2.0
        self.nameLabel?.textColor = ColorConstants.shared.nameLabelColor
        self.explanationLabel?.textColor = ColorConstants.shared.explanationLabelColor
        self.timeLabel?.textColor = ColorConstants.shared.timeLabelColor

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
    
//    func setupCell(cellModel: Results){
//        resultModel = cellModel
//        if let resultModel = self.resultModel{
//            profileImage?.downloaded(from: resultModel.user?.profile_image?.large ?? "")
//            nameLabel?.text = resultModel.user?.name
//            explanationLabel?.text = CellsStringConstants.shared.followExplanation
//            timeLabel?.text = CellsStringConstants.shared.followTime
//        }
//    }
}

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
    @IBOutlet var topImageView: UIImageView?
    @IBOutlet var bottomImageView: UIImageView?
    private var itemModel: TableViewItemModel?
    private var resultModel: Results?
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.profileImage?.layer.masksToBounds = true
        self.profileImage?.layer.cornerRadius = self.profileImage!.frame.width/2.0
        self.topImageView?.layer.masksToBounds = true
        self.topImageView?.layer.cornerRadius = self.topImageView!.frame.width/6.0
        self.bottomImageView?.layer.masksToBounds = true
        self.bottomImageView?.layer.cornerRadius = self.bottomImageView!.frame.width/6.0
        self.nameLabel?.textColor = ColorConstants.shared.nameLabelColor
        self.explanationLabel?.textColor = ColorConstants.shared.explanationLabelColor
        self.timeLabel?.textColor = ColorConstants.shared.timeLabelColor
        self.commentLabel?.textColor = ColorConstants.shared.commentLabelColor
    }
    
    func setupCell(cellModel: TableViewItemModel) {
        itemModel = cellModel
        if let itemModel = self.itemModel {
            profileImage?.image = UIImage(named: itemModel.profileImage ?? "")
            nameLabel?.text = itemModel.nameLabel
            explanationLabel?.text = itemModel.explanationLabel
            commentLabel?.text = itemModel.commentLabel
            timeLabel?.text = itemModel.timeLabel
            topImageView?.image = UIImage(named: itemModel.likedImageView ?? "")
            bottomImageView?.image = UIImage(named: itemModel.likedImageView ?? "")
        }
    }
    
//    func setupCell(cellModel: Results){
//        resultModel = cellModel
//        if let resultModel = self.resultModel {
//            profileImage?.downloaded(from: resultModel.user?.profile_image?.large ?? "")
//            nameLabel?.text = resultModel.user?.name
//            explanationLabel?.text = CellsStringConstants.shared.commentExplanation
//            commentLabel?.text = resultModel.tags?[0].source?.description
//            timeLabel?.text = CellsStringConstants.shared.commentTime
//            topImageView?.downloaded(from: resultModel.urls?.thumb ?? "")
//            bottomImageView?.downloaded(from: resultModel.urls?.thumb ?? "")
//        }
//    }
    
    
}

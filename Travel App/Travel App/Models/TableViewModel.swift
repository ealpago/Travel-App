//
//  TableViewModel.swift
//  Travel App
//
//  Created by Emre Alpago on 4.03.2022.
//

import Foundation
import UIKit

struct TableViewSectionModel {
    var items:[TableViewItemModel?] = []
}

struct TableViewItemModel {
    var cellType:CellType
    var profileImage:String?
    var likedImageView:String?
    var nameLabel:String?
    var timeLabel:String?
    var explanationLabel:String?
    var commentLabel:String?
}

enum CellType {
    case collection
    case follow
    case comment
}

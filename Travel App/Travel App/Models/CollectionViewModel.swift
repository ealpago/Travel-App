//
//  CollectionViewModel.swift
//  Travel App
//
//  Created by Emre Alpago on 18.03.2022.
//

import Foundation
    
struct CollectionViewModel {
    var items:[CollectionViewItemModel?] = []
}

struct CollectionViewItemModel {
    var profileImage:String?
    var nameLabel:String?
    var timeLabel:String?
    var mainImage:String?
    var likesLabel:String?
    var captionLabel:String?
    var commentsLabel:String?
}

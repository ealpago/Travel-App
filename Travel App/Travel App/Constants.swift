//
//  Constants.swift
//  Travel App
//
//  Created by Emre Alpago on 4.03.2022.
//

import Foundation
import UIKit

struct IdentifierConstants{
    static let shared = IdentifierConstants()
    
    let tableViewStoryBoardIdentifier = "TableViewController"
    let collectionViewSotyBoardIdentifier = "CollectionViewController"
}

struct ColorConstants{
    static let shared = ColorConstants()
    
    let nameLabelColor: UIColor = UIColor(red: 50/255, green: 59/255, blue: 69/255, alpha: 1)
    let explanationLabelColor: UIColor = UIColor(red: 92/255, green: 105/255, blue: 121/255, alpha: 1)
    let timeLabelColor: UIColor = UIColor(red: 168/255, green: 182/255, blue: 200/255, alpha: 1)
    let commentLabelColor: UIColor = UIColor(red: 50/255, green: 59/255, blue: 69/255, alpha: 1)
}

struct APIConstants{
    static let shared = APIConstants()
    
    let unsplashAPI_KEY = "&client_id=64qv8DmNP_ztBDEq-4eQ9r7tVQtj3dvYcijhPQWhusM"
    let unsplashBaseURL = "https://api.unsplash.com/"
}

struct CellsStringConstants{
    static let shared = CellsStringConstants()
    
    let likeExplanation = "liked 4 your photos"
    let followExplanation = "started following you"
    let commentExplanation = "leave you a comment:"
    
    let likeTime = "10min ago"
    let followTime = "1h ago"
    let commentTime = "2 days ago"
}

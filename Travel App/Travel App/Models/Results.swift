//
//  Results.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class Results:Codable{
    var id:String?
    var created_at:String?
    var updated_at:String?
    var promoted_at:String?
    var width:Int?
    var height:Int?
    var color:String?
    var blur_hash:String?
    var description:String?
    var alt_description:String?
    var urls:URLS?
    var links:Links?
    var likes:Int?
    var liked_by_user:Bool?
    var sponsorship:Sponsorships?
    var user:User?
    var tags:[Tags]?
    
    init(id:String?,created_at:String?,updated_at:String?,promoted_at:String?,width:Int?,height:Int?,color:String?,blur_hash:String?,description:String?,alt_description:String?,urls:URLS?,links:Links?,likes:Int?,liked_by_user:Bool?,sponsorship:Sponsorships?,user:User?,tags:[Tags]?) {
        self.id = id
        self.created_at = created_at
        self.updated_at = updated_at
        self.promoted_at = promoted_at
        self.width = width
        self.height = height
        self.color = color
        self.blur_hash = blur_hash
        self.description = description
        self.alt_description = alt_description
        self.urls = urls
        self.links = links
        self.likes = likes
        self.liked_by_user = liked_by_user
        self.sponsorship = sponsorship
        self.user = user
        self.tags = tags
    }
}


//
//  User.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class User:Codable{
    var id:String?
    var updated_at:String?
    var username:String?
    var name:String?
    var first_name:String?
    var last_name:String?
    var twitter_username:String?
    var portfolio_url:String?
    var bio:String?
    var location:String?
    var links:Links?
    var profile_image:ProfileImage?
    var instagram_username:String?
    var total_collections:Int?
    var total_likes:Int?
    var total_photos:Int?
    var accepted_tos:Bool?
    var for_hire:Bool?
    var social:Social?
    
    init(id:String?,updated_at:String?,username:String?,name:String?,first_name:String?,last_name:String?,twitter_username:String?,portfolio_url:String?,bio:String?,location:String?,links:Links?,profile_image:ProfileImage?,instagram_username:String?,total_collections:Int?,total_likes:Int?,total_photos:Int?,accepted_tos:Bool?,for_hire:Bool?,social:Social?) {
        self.id = id
        self.updated_at = updated_at
        self.username = username
        self.name = name
        self.first_name = first_name
        self.last_name = last_name
        self.twitter_username = twitter_username
        self.portfolio_url = portfolio_url
        self.bio = bio
        self.location = location
        self.links = links
        self.profile_image = profile_image
        self.instagram_username = instagram_username
        self.total_collections = total_collections
        self.total_likes = total_likes
        self.total_photos = total_photos
        self.accepted_tos = accepted_tos
        self.for_hire = for_hire
        self.social = social
    }
}

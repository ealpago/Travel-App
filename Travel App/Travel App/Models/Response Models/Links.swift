//
//  Links.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class Links:Codable{
    var linksSelf:String?
    var html:String?
    var download:String?
    var downloadLocation:String?
    var photos:String?
    var likes:String?
    var portfolio:String?
    var following:String?
    var followers:String?
    
    enum CodingKeys : String, CodingKey {
       case linksSelf = "self"
       case html, download, photos, likes, portfolio, following, followers
       case downloadLocation = "download_location"
   }
    
    init(linksSelf:String?,html:String?,download:String?,downloadLocation:String?,photos:String?,likes:String?,portfolio:String?,following:String?,followers:String?) {
        self.linksSelf = linksSelf
        self.html = html
        self.download = download
        self.downloadLocation = downloadLocation
        self.photos = photos
        self.likes = likes
        self.portfolio = portfolio
        self.following = following
        self.followers = followers
    }
}


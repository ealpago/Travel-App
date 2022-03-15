//
//  Social.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class Social:Codable{
    var instagram_username:String?
    var portfolio_url:String?
    var twitter_username:String?
    
    init(instagram_username:String?,portfolio_url:String?,twitter_username:String?) {
        self.instagram_username = instagram_username
        self.portfolio_url = portfolio_url
        self.twitter_username = twitter_username
    }
}

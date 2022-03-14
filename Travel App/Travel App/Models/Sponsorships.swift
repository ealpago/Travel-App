//
//  Sponsorships.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class Sponsorships:Codable{
    var tagline:String?
    var tagline_url:String?
    var sponsor:Sponsor?
    
    init(tagline:String?,tagline_url:String?,sponsor:Sponsor?){
        self.tagline = tagline
        self.tagline_url = tagline_url
        self.sponsor = sponsor
    }
}

//
//  ProfileImage.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class ProfileImage:Codable{
    var small:String?
    var medium:String?
    var large:String?
    
    init(small:String?,medium:String?,large:String?) {
        self.small = small
        self.medium = medium
        self.large = large
    }
}

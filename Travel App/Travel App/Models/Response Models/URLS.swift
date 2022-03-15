//
//  URLS.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class URLS:Codable{
    var raw:String?
    var full:String?
    var regular:String?
    var small:String?
    var thumb:String?
    var small_s3:String?
    
    init(raw:String?,full:String?,regular:String?,small:String?,thumb:String?,small_s3:String?){
        self.raw = raw
        self.full = full
        self.regular = regular
        self.small = small
        self.thumb = thumb
        self.small_s3 = small_s3
    }
}

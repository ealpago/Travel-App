//
//  Tags.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class Tags:Codable{
    var type:String?
    var title:String?
    var source:Source?
    
    init(type:String?,title:String?,source:Source?){
        self.type = type
        self.title = title
        self.source = source
    }
}

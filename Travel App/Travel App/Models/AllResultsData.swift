//
//  AllResultsData.swift
//  Travel App
//
//  Created by Emre Alpago on 10.03.2022.
//

import Foundation

class Name:Codable {
    var title:String?
    var first:String?
    var last:String?
    
    init(title:String?, first:String?, last:String?){
        self.title = title
        self.first = first
        self.last = last
    }
}

class Location:Codable{
    var street:Street?
    var city:String?
    var state:String?
    var country:String?
    var postcode:Int?
    var coordinates:Coordinates?
    var timezone:Timezone?
}

class Street:Codable{
    var number:Int?
    var name:String?
}

class Coordinates:Codable{
    var latitude:String?
    var longitude:String?
}

class Timezone:Codable{
    var offset:String?
    var description:String?
}

class Login:Codable{
    var uuid:String?
    var username:String?
    var password:String?
    var salt:String?
    var md5:String?
    var sha1:String?
    var sha256:String?
}

class Dob:Codable{
    var date:String?
    var age:Int?
}

class Register:Codable{
    var date:String?
    var age:Int?
}

class ID:Codable{
    var name:String?
    var value:String?
}

class Picture:Codable{
    var large:String?
    var medium:String?
    var thumbnail:String?
}

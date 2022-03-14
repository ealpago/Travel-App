//
//  BusinessWork.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class BusinessWork:Codable{
    var status:String?
    var approved_on:String?
    
    init(status:String?,approved_on:String?){
        self.status = status
        self.approved_on = approved_on
    }
}

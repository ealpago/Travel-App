//
//  TopicSubmissions.swift
//  Travel App
//
//  Created by Emre Alpago on 14.03.2022.
//

import Foundation

class TopicSubmissions:Codable{
    var people:People?
    var business_work:BusinessWork?
    
    init(people:People?,business_work:BusinessWork?){
        self.people = people
        self.business_work = business_work
    }
}

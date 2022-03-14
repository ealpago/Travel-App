//
//  UnsplashResponse.swift
//  Travel App
//
//  Created by Emre Alpago on 11.03.2022.
//

import Foundation

class UnsplashResponse:Codable{
    var total:Int?
    var total_pages:Int?
    var results:[Results]?
    
    init(total:Int?,total_pages:Int?,results:[Results]?){
        self.total = total
        self.total_pages = total_pages
        self.results = results
    }
}





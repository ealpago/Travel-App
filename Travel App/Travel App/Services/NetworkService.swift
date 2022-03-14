//
//  NetworkService.swift
//  Travel App
//
//  Created by Emre Alpago on 10.03.2022.
//

//https://pixabay.com/api/?key=26092409-e7336837b22977dd15edd88a0

import Foundation


public enum HTTPMethod:String{
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public enum NetworkRouter{
    case category(category:String)
    
    public var method:HTTPMethod {
        switch self{
        case .category:
            return .get
        }
    }

    
//    public var path:String{
//        switch self {
//        case .category(let category):
//            return Constants.shared.baseURL
//        }
//    }
    
    
}


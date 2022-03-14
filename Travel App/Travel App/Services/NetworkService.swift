//
//  NetworkService.swift
//  Travel App
//
//  Created by Emre Alpago on 10.03.2022.
//

//https://api.unsplash.com/search/photos?query=profile+picture&client_id=64qv8DmNP_ztBDEq-4eQ9r7tVQtj3dvYcijhPQWhusM

import Foundation


public enum HTTPMethod:String{
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case delete = "DELETE"
}

public enum NetworkRouter{
    case query(query:String)
    
    public var method:HTTPMethod {
        switch self{
        case .query:
            return .get
        }
    }
    
    public var path:String{
        switch self {
        case .query(let query):
            return APIConstants.shared.unsplashBaseURL + "search/photos?query=\(query)" + APIConstants.shared.unsplashAPI_KEY
        }
    }
}

class NetworkManager {
    static let service = NetworkManager()
    public func request<T: Codable>(requestRoute: NetworkRouter, responseModel:T.Type, completion:@escaping (_ details: T) -> Void){
        if let url = URL(string: requestRoute.path){
            var request = URLRequest(url: url)
            request.httpMethod = requestRoute.method.rawValue
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: request) { data, response, error in
                do {
                    let data = try JSONDecoder().decode(T.self, from: data!)
                    completion(data)
                } catch let e as NSError {
                    print("error : \(e)")
                }
            }
            task.resume()
        }
    }
}

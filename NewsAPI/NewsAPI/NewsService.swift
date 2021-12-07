//
//  NewsService.swift
//  NewsAPI
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation
import Alamofire

public protocol NewsServiceProtocol {
    func fetchNews(completion: @escaping (Result<NewsResponse>) -> Void)
}

public class NewsService: NewsServiceProtocol {
    
    enum Error : Swift.Error {
        case serializationError(internal: Swift.Error)
        case networkError(internal: Swift.Error)
    }
    
    public init() {}
    
    public func fetchNews(completion: @escaping (Result<NewsResponse>) -> Void) {
        let urlString = URL(string: "https://www.hackingwithswift.com/samples/petitions-1.json")!
        AF.request(urlString).responseData { (response) in
            switch response.result {
            case .success(let data) :
                let decoder = JSONDecoder()
                do {
                    let response = try decoder.decode(NewsResponse.self, from: data)
                    completion(.success(response))
                } catch {
                    completion(.failure(Error.serializationError(internal: error)))
                }
               
                
            case .failure(let error) :
                completion(.failure(Error.networkError(internal: error)))
            }
        }
        
    }
}

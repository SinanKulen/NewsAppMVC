//
//  NewsResponse.swift
//  NewsAPI
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation

public struct NewsResponse : Decodable {
  
    private enum RootCodingKeys : String, CodingKey {
        case results
    }
    
    let result : [News]
    
    public init(from decoder: Decoder) throws {
        let rootContainer = try decoder.container(keyedBy: RootCodingKeys.self)
        self.result  = try rootContainer.decode([News].self, forKey: .results)
    }
}

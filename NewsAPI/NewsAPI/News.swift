//
//  News.swift
//  NewsAPI
//
//  Created by Sinan Kulen on 7.12.2021.
//

import Foundation

public struct News : Decodable {
    public let title : String
    public let body : String
    public let signatureCount : Double
    public let petition_type : [Petition]
}

public struct Petition : Decodable {
    public let name : String
}

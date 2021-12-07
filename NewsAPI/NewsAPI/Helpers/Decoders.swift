//
//  Decoders.swift
//  NewsAPI
//
//  Created by Sinan Kulen on 7.12.2021.
//

import Foundation

public enum Decoders {
    static let plainDateDecoder : JSONDecoder = {
        let decoder = JSONDecoder()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-mm-dd"
        decoder.dateDecodingStrategy = .formatted(dateFormatter)
        return decoder
    }()
}

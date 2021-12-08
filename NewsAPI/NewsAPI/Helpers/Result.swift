//
//  Result.swift
//  NewsAPI
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation

 public enum Result<value> {
    case success(value)
    case failure(Error)
}



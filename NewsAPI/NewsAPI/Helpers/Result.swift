//
//  Result.swift
//  NewsAPI
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation

 public enum Result<Value> {
    case success(Value)
    case failure(Error)
}



//
//  AppContainer.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation
import NewsAPI

let app = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    let service = NewsService()
} 

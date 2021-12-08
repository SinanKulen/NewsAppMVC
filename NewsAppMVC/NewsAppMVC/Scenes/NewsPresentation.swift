//
//  NewsPresentation.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation
import NewsAPI

struct NewsPresentation {
    let newsTitle : String
    let newsBody : String
}

extension NewsPresentation {
    init(news : News) {
        self.init(newsTitle: news.title, newsBody: news.body)
    }
}

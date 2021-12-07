//
//  NewsTests.swift
//  NewsAPITests
//
//  Created by Sinan Kulen on 7.12.2021.
//

import XCTest
@testable import NewsAPI

class NewsTests: XCTestCase {

    func testParsing() throws {
        let bundle = Bundle(for: NewsTests.self)
        let url = bundle.url(forResource: "news", withExtension: "json")!
        let data = try Data(contentsOf: url)
        let news = try JSONDecoder().decode(News.self, from: data)
        
        XCTAssertEqual(news.title, "Remove Chuck Schumer and Nancy Pelosi from office")
        XCTAssertEqual(news.signatureCount, 149)
        XCTAssertEqual(news.petition_type.first?.name, "Call on Congress to act on an issue")
        XCTAssertEqual(news.petition_type.count, 1)
    }
}

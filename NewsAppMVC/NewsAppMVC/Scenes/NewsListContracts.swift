//
//  NewsListContracts.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation

protocol NewsListViewProtocol {
    func updateNewsList(_ newsList: [NewsPresentation])
    func setLoading(_ isLooding : Bool)
}



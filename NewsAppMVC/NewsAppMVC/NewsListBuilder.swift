//
//  NewsListBuilder.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 8.12.2021.
//

import UIKit

final class NewsListBuilder {
    static func make() -> NewsListViewController {
        let storyboard = UIStoryboard(name: "Newslist", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "NewsListViewController") as! NewsListViewController
        viewController.service = app.service
        return viewController
    }
}

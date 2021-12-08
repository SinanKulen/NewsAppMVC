//
//  AppRouter.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 8.12.2021.
//

import UIKit

final class AppRouter {
    
    let window : UIWindow
    
    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        let viewController = NewsListBuilder.make()
        let navigationController = UINavigationController(rootViewController: viewController)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}

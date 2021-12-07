//
//  ViewController.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 6.12.2021.
//

import UIKit
import NewsAPI

class ViewController: UIViewController {

    let service : NewsServiceProtocol = NewsService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        service.fetchNews { (result) in
            print(result)
        }
        
    }


}


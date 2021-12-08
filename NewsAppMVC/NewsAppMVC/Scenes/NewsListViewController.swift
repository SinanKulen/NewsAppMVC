//
//  NewsListViewController.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 8.12.2021.
//

import UIKit
import NewsAPI

final class NewsListViewController : UIViewController {
    
    @IBOutlet weak var customView : NewsListView!
    var service : NewsServiceProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customView.setLoading(true)
        
        service.fetchNews { [weak self] results in
            guard let self = self else { return }
            
            switch results {
            case .success(let value) :
                let newsPresentations = value.result.map(NewsPresentation.init)
                self.customView.updateNewsList(newsPresentations)
            case .failure(let error) : print(error)
            }
            
            self.customView.setLoading(false)
        }
    }
}

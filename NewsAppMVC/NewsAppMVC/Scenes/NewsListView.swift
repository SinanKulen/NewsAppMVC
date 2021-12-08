//
//  NewsListView.swift
//  NewsAppMVC
//
//  Created by Sinan Kulen on 8.12.2021.
//

import Foundation
import UIKit

final class NewsListView : UIView {
    
    @IBOutlet private weak var tableView: UITableView!
    private var newsList : [NewsPresentation] = []
}

extension NewsListView : NewsListViewProtocol {
  
    func updateNewsList(_ newsList: [NewsPresentation]) {
        self.newsList = newsList
        tableView.reloadData()
    }
    
    func setLoading(_ isLooding : Bool) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = isLooding
    }
}

extension NewsListView : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TO DO
    }
}

extension NewsListView : UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsListCell", for: indexPath)
        let news = newsList[indexPath.row]
        cell.textLabel?.text = news.newsTitle
        cell.detailTextLabel?.text = news.newsBody
        return cell
    }
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsList.count
    }
}

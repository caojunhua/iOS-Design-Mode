//
//  DoubanListViewController.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import UIKit

class DoubanListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var channelList: [channelData] = []
    var presenter: DoubanListPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        view.backgroundColor = .white
    }

}

extension DoubanListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return channelList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DoubanListCell", for: indexPath) as! DoubanTableViewCell
        let channel = channelList[indexPath.row]
        cell.setType(forChannel: channel)
        cell.setIndexLabel(indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter?.showDoubanDetail(forPost: channelList[indexPath.row])
    }
}


extension DoubanListViewController: ListViewProtocol{
    func reloadUI(with params: [channelData]) {
        channelList = params
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
    }

    func showError() {
        print("error")
    }

    func showLoading() {
        print("loading")
    }

    func hideLoading() {
        print("hideLoading")
    }
}


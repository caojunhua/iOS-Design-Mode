//
//  DoubanListPresenter.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import Foundation

class DoubanListPresenter: DoubanListPresenterProtocol {
    weak var view: ListViewProtocol?
    
    var interactor: DoubanListInteractorProtocol?
    
    var router: DoubanListRouterProtocol?
    
    func viewDidLoad() {
        print("getData")
        view?.showLoading()
//        interactor?.retrievePostList()
        interactor?.getData()
    }
    
    func showDoubanDetail(forPost post: channelData) {
        router?.pushToDoubanDetailScreen(from: view!, params: post)
    }
}

extension DoubanListPresenter: DoubanListInteractorOutputProtocol {
    func didRetrieveData(_ posts: [channelData]) {
        view?.hideLoading()
        view?.reloadUI(with: posts)
    }
    
    func onError() {
        print("error--")
    }
    
    
}

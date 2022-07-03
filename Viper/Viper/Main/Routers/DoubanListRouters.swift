//
//  DoubanListRouters.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import UIKit

class DoubanListRouters: DoubanListRouterProtocol {
    class func createDoubanListViewController() -> UIViewController {
        
        let nav = mainStroyboard.instantiateViewController(withIdentifier: "DoubanNaviC")
        if let view = nav.children.first as? DoubanListViewController {
            let presenter: DoubanListPresenterProtocol & DoubanListInteractorOutputProtocol = DoubanListPresenter()
            let interactor: DoubanListInteractorProtocol = DoubanInteractor()
            
            view.presenter = presenter
            view.title = "控制器"
            presenter.view = view
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            print("创建nav-view",view)
            return nav
        }
        return UIViewController()
    }
    
    private static var mainStroyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
    
    func pushToDoubanDetailScreen(from view: ListViewProtocol, params: channelData) {
        
    }
    
    
}

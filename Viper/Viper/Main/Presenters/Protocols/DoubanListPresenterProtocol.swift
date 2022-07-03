//
//  DoubanListPresenterProtocol.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import Foundation
import UIKit
/**
 presenter
 1. 持有属性
    (1) ViewController
    (2) Router
    (3) Interactor
 2. 要做的事情
    (1) 帮助ViewController跳转到下一个Route
    (2) ViewController --> ViewDidLoad后,帮助ViewController调用Interactor去加载数据
 */
protocol DoubanListPresenterProtocol: class {
    // 1. 有些活,不需要DoubanListPresenterProtocol亲自去干的,交给它的小弟们去干
    // 2. 小弟们: view, interactor, router,要干活的小弟对应的protocol
    var view: ListViewProtocol? { get set }
    var interactor: DoubanListInteractorProtocol? { get set }
    var router: DoubanListRouterProtocol? { get set }
    
    // 3. 自己要干的活
    func viewDidLoad() // ViewController调用viewDidLoad后,需要加载数据
    func showDoubanDetail(forPost post: channelData)
}

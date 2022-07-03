//
//  DoubanListRouterProtocol.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import Foundation
import UIKit

/**
 这个协议的目的
 1. 创建下个界面
 2. 用来跳转到下个界面
 */
protocol DoubanListRouterProtocol: class {
    // 1. Router中要有创建ViewController节点方法 -- 静态方法
    static func createDoubanListViewController() -> UIViewController
    
    // 2. 在这个Route节点中,将要跳转到下个Router节点方法
    func pushToDoubanDetailScreen(from view: ListViewProtocol, params: channelData)
    
}

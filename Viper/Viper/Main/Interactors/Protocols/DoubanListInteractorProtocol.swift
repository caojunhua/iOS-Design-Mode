//
//  DoubanListInteractorProtocol.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import Foundation

/**
 Interactor: 和Entity相关打交道
 1. 本地获取数据
 2. 远程获取数据
 3. 获取数据成功后
 */
protocol DoubanListInteractorProtocol: class {
    var presenter: DoubanListInteractorOutputProtocol? { get set }
    
    func getData()
}


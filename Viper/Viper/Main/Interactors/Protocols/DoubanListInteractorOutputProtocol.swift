//
//  DoubanListInteractorOutputProtocol.swift
//  Viper
//
//  Created by cao hua on 2022/7/3.
//

import Foundation

protocol DoubanListInteractorOutputProtocol: class {
    // 帮助presenter做事
    func didRetrieveData(_ posts: [channelData])
    func onError()
}

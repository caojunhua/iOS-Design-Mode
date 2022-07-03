//
//  DoubanInteractor.swift
//  Viper
//
//  Created by cao hua on 2022/7/3.
//

import Foundation

class DoubanInteractor: DoubanListInteractorProtocol {
    var presenter: DoubanListInteractorOutputProtocol?
    func getData() {
        print("模拟获取数据")
        // 模拟获取数据
        var temp = [channelData]()
        for _ in 0..<5 {
            let cur = channelData(name: "张三", En: "zhangsan", id: "eee")
            temp.append(cur)
        }
        DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
            // 获取数据成功后
            self.presenter?.didRetrieveData(temp)
        }
        
    }
    
}

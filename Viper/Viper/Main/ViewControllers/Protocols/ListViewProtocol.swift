//
//  ListViewProtocol.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import Foundation

protocol ListViewProtocol: class {
    func reloadUI(with params: [channelData])
    
    func showError()
    
    func showLoading()
    
    func hideLoading()
}

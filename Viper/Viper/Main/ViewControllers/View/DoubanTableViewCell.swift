//
//  DoubanTableViewCell.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import UIKit

class DoubanTableViewCell: UITableViewCell {

    @IBOutlet weak var indexLabel: UILabel!
    
    @IBOutlet weak var describeLabel: UILabel!
    
    @IBOutlet weak var detailTypeLabel: UILabel!
    

    func setType(forChannel channel: channelData) {
        detailTypeLabel.text = channel.name
    }
    
    func setIndexLabel(_ index: IndexPath) {
        indexLabel.text = String(index.row)
    }
}

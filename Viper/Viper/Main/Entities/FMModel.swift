//
//  FMModel.swift
//  Viper
//
//  Created by cao hua on 2022/7/2.
//

import Foundation
import SwiftyJSON

struct channelData {
    var name: String?
    var EnglishName: String?
    var channel_id: String?
    
    init(json: JSON) {
        name        = json["name"].stringValue
        EnglishName = json["name_en"].stringValue
        channel_id  = json["channel_id"].stringValue
    }
    
    init(name: String, En: String, id: String) {
        self.name = name
        self.EnglishName = En
        self.channel_id = id
    }
}

struct FMArrayList {
    var list: [channelData] = [channelData]()
    
    init(json: JSON) {
        let channels = json["channels"].arrayValue
        for channel in channels {
            var details = channelData.init(json: channel)
            details.name = channel["name"].stringValue
            details.EnglishName = channel["name_en"].stringValue
            details.channel_id = channel["channel_id"].stringValue
            list.append(details)
        }
    }
}

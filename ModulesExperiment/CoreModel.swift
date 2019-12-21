//
//  CoreModel.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import Foundation

class CoreModel {
    
    var title: String?
    var contentUrl: URL?
    var infoText: String?
    
    init(data: [String: Any]) {
        title = data["title"] as? String
        infoText = data["info"] as? String
        if let urlString = data["url"] as? String {
            contentUrl = URL(string: urlString)
        }
    }
}

//
//  CoreModel.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import Foundation

public class CoreModel {
    
    public var title: String?
    public var contentUrl: URL?
    public var infoText: String?
    
    public init(data: [String: Any]) {
        title = data["title"] as? String
        infoText = data["info"] as? String
        if let urlString = data["url"] as? String {
            contentUrl = URL(string: urlString)
        }
    }
}

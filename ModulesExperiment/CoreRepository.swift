//
//  CoreRepository.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import Foundation
import UIKit

class CoreRepository {
    fileprivate static var instance: CoreRepository?
    static var shared: CoreRepository {
        if let existingInstance = instance {
            return existingInstance
        } else {
            let newInstance = CoreRepository()
            instance = newInstance
            return newInstance
        }
    }
    
    func getJsonEntities(name: String) -> [[String: Any]] {
        guard let data = NSDataAsset(name: name)?.data else { return [] }
        
        let dict = try? JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
        return dict?["entities"] as? [[String: Any]] ?? []
    }
}

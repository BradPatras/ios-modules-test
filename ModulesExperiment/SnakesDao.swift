//
//  SnakeDao.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import Foundation
import Core
import CoreRepository

class SnakesDao {
    static func fetchSnakes() -> [CoreModel] {
        return CoreRepository.shared.getJsonEntities(name: "snakes").map(CoreModel.init)
    }
}

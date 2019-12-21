//
//  Navigation.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import UIKit

extension UIViewController {
    func show(_ viewController: UIViewController) {
        present(viewController, animated: true, completion: nil)
    }
    
    func pushTo(_ destination: UIViewController) {
        navigationController?.pushViewController(destination, animated: true)
    }
}

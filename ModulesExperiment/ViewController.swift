//
//  ViewController.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import UIKit
import CoreView


class ViewController: UIViewController {

    @IBOutlet weak var buttonStackView: UIStackView!
    
    var snakeModels: [CoreModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        snakeModels = SnakesDao.fetchSnakes()
        for model in snakeModels {
            let button = UIButton(type: .system)
            button.setTitle(model.title, for: .normal)
            button.addTarget(self, action: #selector(snakeButtonPressed(_:)), for: .touchUpInside)
            buttonStackView.addArrangedSubview(button)
        }
    }
    
    @objc private func snakeButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = buttonStackView.arrangedSubviews.firstIndex(of: sender) else { return }
        guard snakeModels.count > buttonIndex else { return }
        let snakeModel = snakeModels[buttonIndex]
        
        navigationController?.pushViewController(CoreModelViewController(model: snakeModel), animated: true)
    }
}


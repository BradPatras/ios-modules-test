//
//  ImageLoader.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import UIKit
import Kingfisher

struct ImageLoader {
    private weak var imageView: UIImageView?
    
    fileprivate init(imageView: UIImageView) {
        self.imageView = imageView
    }
    
    func load(with url: URL?, animated: Bool = true) {
        
        let options: KingfisherOptionsInfo = animated ? [.transition(.fade(1)), .forceTransition] : []
        
        if animated {
            imageView?.kf.setImage(with: url, options: options)
        } else {
            imageView?.kf.setImage(with: url)
        }
    }
}

extension UIImageView {
    var loader: ImageLoader {
        get {
            return ImageLoader(imageView: self)
        }
    }
}

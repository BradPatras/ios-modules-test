//
//  CoreModelViewController.swift
//  ModulesExperiment
//
//  Created by Brad Patras on 12/21/19.
//  Copyright © 2019 Brad Patras. All rights reserved.
//

import UIKit
import SnapKit
import ImageLoader

protocol CoreModelView : UIViewController {
    associatedtype ModelType: CoreModel
    var model: ModelType { get set }
    
    init(model: ModelType)
}

public class CoreModelViewController<ModelType>: UIViewController, CoreModelView where ModelType: CoreModel {
    private var imageView: UIImageView = UIImageView()
    private var labelView: UILabel = UILabel()
    
    var model: ModelType
    
    public required init(model: ModelType) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        setupViews()
        applyModel()
    }
    
    final fileprivate func setupViews() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.contentMode = .scaleAspectFit
        imageView.snp.makeConstraints { (make) in
            make.top.equalTo(view.snp.topMargin).inset(40)
            make.left.equalToSuperview().inset(10)
            make.right.equalToSuperview().inset(10)
            make.top.equalToSuperview().inset(80)
        }
        
        labelView.translatesAutoresizingMaskIntoConstraints = false
        labelView.textAlignment = .center
        labelView.numberOfLines = 0
        view.addSubview(labelView)
        labelView.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().inset(40)
            make.left.equalToSuperview().inset(20)
            make.right.equalToSuperview().inset(20)
            make.top.equalTo(imageView.snp.bottom).inset(20)
        }
        
        view.backgroundColor = UIColor.systemBackground
    }
    
    final fileprivate func applyModel() {
        labelView.text = model.infoText
        imageView.loader.load(with: model.contentUrl, animated: true)
        title = model.title
    }
}

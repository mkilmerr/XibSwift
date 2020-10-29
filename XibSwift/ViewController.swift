//
//  ViewController.swift
//  XibSwift
//
//  Created by Marcos Kilmer on 29/10/20.
//  Copyright © 2020 mkilmer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupViews()
        
    }
    
    func setupViews() {
        guard let featureView1 =  Bundle.main.loadNibNamed("Feature", owner: self, options: nil)?.first as? FeatureView else {return}
        
        guard let featureView2 =  Bundle.main.loadNibNamed("Feature", owner: self, options: nil)?.first as? FeatureView else {return }
        
        guard let featureView3 =  Bundle.main.loadNibNamed("Feature", owner: self, options: nil)?.first as? FeatureView else {return }
        
        featureView1.backgroundColor = .orange
        self.view.addSubview(featureView1)
        
        featureView2.featureTitleLabel.text = "Feature label 2 "
        featureView2.backgroundColor = .gray
        featureView2.featureButton.setTitleColor(.white, for: .normal)
        featureView2.frame.origin.y = featureView1.frame.height
        
        self.view.addSubview(featureView2)
        
        featureView3.frame.origin.y = featureView1.frame.height * 2
        featureView3.backgroundColor = .green
        featureView3.frame.size.height = featureView1.frame.height / 3
        self.view.addSubview(featureView3)
        
        
        
    }
    
    
    
}


//
//  RootViewController.swift
//  ConstraintFactory
//
//  Created by Nicolas Ameghino on 6/13/14.
//  Copyright (c) 2014 Nicolas Ameghino. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        // Custom initialization
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.darkGrayColor()
        
        let aView = UILabel()
        aView.setTranslatesAutoresizingMaskIntoConstraints(false)
        aView.backgroundColor = UIColor.lightGrayColor()
        aView.textColor = UIColor.redColor()
        aView.text = "Hello, World!"
        aView.textAlignment = .Center
        aView.font = UIFont(name: "HelveticaNeue-Thin", size: 32.0)
        aView.numberOfLines = 0
        
        self.view.addSubview(aView)
        
        // (first item, attribute, relation, second item, second attribute, multiplier, constant)
        let constraintDefinition: ConstraintTuple = (aView, .Height, .Equal, self.view, .Height, 0.5, 0)
        
        self.view.addConstraints(
            ConstraintFactory.createConstraints([
                constraintDefinition,
                (aView, .Width, .Equal, self.view, .Width, 0.5, 0),
                (aView, .CenterX, .Equal, self.view, .CenterX, 1, 0),
                (aView, .CenterY, .Equal, self.view, .CenterY, 1, 0),
            ])
        )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

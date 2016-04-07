//
//  CodedViewController.swift
//  CodedViews
//
//  Created by iwritecode on 4/6/16.
//  Copyright © 2016 sojiwritescode. All rights reserved.
//

import UIKit

class CodedViewController: UIViewController {
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.borderStyle = .Line
        textField.layer.borderWidth = 2.0
        textField.layer.borderColor = UIColor.whiteColor().CGColor
        textField.layer.cornerRadius = 10.0
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Type text here..."
        return textField
    }()
    
    lazy var button: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor.yellowColor()
        button.layer.cornerRadius = 10
        button.translatesAutoresizingMaskIntoConstraints = false
        button.titleLabel!.text = "Enter"
        button.titleLabel?.textColor = UIColor.whiteColor()
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.cyanColor()
        view.addSubview(textField)
        view.addSubview(button)
        
        addLayout()
    }
    
    func addLayout() {
        
        let views = [
            "textField": textField,
            "button": button
        ]
        
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("[textField(200)]", options: [], metrics: nil, views: views))

        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("[button(80)]", options: [], metrics: nil, views: views))
        view.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-180-[textField(40)]-60-[button(40)]", options: [], metrics: nil, views: views))
        
        view.addConstraint(NSLayoutConstraint(item: textField, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1, constant: 0))
        view.addConstraint(NSLayoutConstraint(item: button, attribute: .CenterX, relatedBy: .Equal, toItem: view, attribute: .CenterX, multiplier: 1.0, constant: 0.0))
        
    }
    
}

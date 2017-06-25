//
//  BaseDynamicView.swift
//  table-view
//
//  Created by Rokas on 25/06/2017.
//  Copyright © 2017 Rokas. All rights reserved.
//

import UIKit

class BaseDynamicView: UIView {
    
    var textField: UITextField {
        return _textField
    }
    
    private lazy var _button: UIButton = {
        let button = UIButton()
        
        button.setTitle("Back", for: .normal)
        button.backgroundColor = .lightGray
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var _textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .lightGray
        return textField
    }()

    var isLayoutSubviewed = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if !isLayoutSubviewed {
            isLayoutSubviewed = true
            
            backgroundColor = .white
            
            addSubview(_button)
            _button.widthAnchor.constraint(equalToConstant: 200).isActive = true
            _button.heightAnchor.constraint(equalToConstant: 40).isActive = true
            _button.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
            _button.topAnchor.constraint(equalTo: topAnchor, constant: 50).isActive = true
            
            addSubview(_textField)
            _textField.widthAnchor.constraint(equalToConstant: 200).isActive = true
            _textField.heightAnchor.constraint(equalToConstant: 40).isActive = true
            _textField.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            _textField.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        }
    }
    
    @objc func buttonTapped() {
        if let topController = UIApplication.topViewController() {
            topController.dismiss(animated: true)
        }
    }

}

//
//  RootView.swift
//  table-view
//
//  Created by Rokas on 24/06/2017.
//  Copyright © 2017 Rokas. All rights reserved.
//

import UIKit

class RootView: UIView {
    
    var label: UILabel {
        return _label
    }
    
    var tableView: UITableView {
        return _tableView
    }

    private lazy var _tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.isScrollEnabled = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        tableView.backgroundColor = .lightGray
        return tableView
    }()
    
    private lazy var _label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .lightGray
        return label
    }()
    
    private var isLayoutSubviewed = false
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        if !isLayoutSubviewed {
            isLayoutSubviewed = true
            
            backgroundColor = .white
            
            addSubview(_label)
            _label.widthAnchor.constraint(equalToConstant: 200).isActive = true
            _label.heightAnchor.constraint(equalToConstant: 40).isActive = true
            _label.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
            _label.topAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
            
            addSubview(_tableView)
            _tableView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
            _tableView.rightAnchor.constraint(equalTo: rightAnchor, constant: -20).isActive = true
            _tableView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
            _tableView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        }
    }
    
}



























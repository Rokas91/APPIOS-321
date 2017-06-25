//
//  BaseTableViewCell.swift
//  table-view
//
//  Created by Rokas on 24/06/2017.
//  Copyright © 2017 Rokas. All rights reserved.
//

import UIKit

class BaseTableViewCell: UITableViewCell {
    
    var dynamicViewController: BaseDynamicViewController = ConcreteDynamicViewController()
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(onChange: (@escaping() -> Any) -> (), controller: (BaseDynamicViewController) -> ()) {
        super.init(style: .default, reuseIdentifier: nil)
        
        onChange(dynamicViewController.getValue)
        controller(dynamicViewController)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        backgroundColor = .blue
    }

}

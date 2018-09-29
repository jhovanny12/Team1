//
//  RoundedButtons.swift
//  TaskManagement
//
//  Created by Jhovanny A. Gonzalez on 9/29/18.
//  Copyright © 2018 Team1UHCosc4355. All rights reserved.
//

import UIKit

class RoundedButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.borderWidth = 1/UIScreen.main.nativeScale
        layer.borderColor = UIColor.blue.cgColor
    }
}

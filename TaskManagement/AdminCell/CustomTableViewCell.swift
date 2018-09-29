//
//  CustomTableViewCell.swift
//  TaskManagement
//
//  Created by Jhovanny A. Gonzalez on 9/29/18.
//  Copyright © 2018 Team1UHCosc4355. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var lblTaskName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func customInit (taskName: String){
        self.lblTaskName.text = taskName
        self.lblTaskName.textColor = UIColor (displayP3Red: 0.0, green: 122.0/255.0, blue: 1.0, alpha: 1.0)
    }
    
}

//
//  CustomCell.swift
//  EmployeeDetail_WatchOS
//
//  Created by Naseem Ahmad on 11/07/17.
//  Copyright © 2017 Naseem Ahmad. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    //Employee object which will update employee id and employee name
    @IBOutlet weak var designation: UILabel!
    internal var employee:Employee? {
        
        didSet {
            employeeIdLabel.text = employee?.id
            employeeNameLabel.text = employee?.name
            designation.text = employee?.designation
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}

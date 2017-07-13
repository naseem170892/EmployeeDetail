//
//  EmployeeDetailViewController.swift
//  EmployeeDetail_WatchOS
//
//  Created by Naseem Ahmad on 11/07/17.
//  Copyright © 2017 Naseem Ahmad. All rights reserved.
//

import UIKit

protocol EmployeeDetailProtocol:class {
    
    func updateEmployeeData(employee:Employee)
}

class EmployeeDetailViewController: UIViewController {

    @IBOutlet weak var designation: UITextField!
    @IBOutlet weak var employeeIdTextFiled: UITextField!
    @IBOutlet weak var employeeNameTextField: UITextField!
    
    weak var employeeDetailDelegate:EmployeeDetailProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func doneButtonAction(_ sender: UIButton) {
        
        if let id = employeeIdTextFiled.text, let name = employeeNameTextField.text, let desig = designation.text {
            employeeDetailDelegate?.updateEmployeeData(employee: Employee(id: id, name: name, designation: desig))
        }
        self.dismiss(animated: true, completion: nil)
    }
    
    

}

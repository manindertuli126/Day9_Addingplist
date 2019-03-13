//
//  ViewController.swift
//  Day9
//
//  Created by MacStudent on 2019-03-12.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.readInformationPlist()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "Employee", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            print(dictionary!.description)
            
            let countiresArray = dictionary!["countries"] as! NSArray
            for c in countiresArray{
                print(c)
            }
            
            let employeeArray = dictionary!["employees"] as! NSArray
            for c in 0..<employeeArray.count{
                print(employeeArray[c])
            }
            
            for e in employeeArray
            {
                let emp = e as! NSDictionary
                print("Employee ID = \(emp["employeeId"]!)")
                print("Employee name = \(emp["employeeName"]!)")
                print("Employee Salary = \(emp["employeeSalary"]!)")
            }
        }
    }
}


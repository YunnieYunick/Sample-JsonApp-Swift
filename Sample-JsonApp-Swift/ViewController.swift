//
//  ViewController.swift
//  Sample-JsonApp-Swift
//
//  Created by Yunnie Yunick on 2017/01/19.
//  Copyright © 2017年 YunnieYunick. All rights reserved.
//

import UIKit
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var keyField: UITextField!
    @IBOutlet weak var valueField: UITextField!
    
    var count:Int = 0
    var json = JSON([])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         keyField.text = String(describing: json["test"][count]["id"])
         valueField.text = String(describing: json["test"][count]["message"])

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func edit(_ sender: Any) {
        json["test"][count]["id"] = JSON(keyField.text)
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

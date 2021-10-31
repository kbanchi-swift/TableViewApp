//
//  AddListViewController.swift
//  TableViewApp
//
//  Created by 伴地慶介 on 2021/10/30.
//

import UIKit

class AddListViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let userDefaults = UserDefaults.standard
        if (userDefaults.object(forKey: "add") != nil) {
            taskArray = userDefaults.object(forKey: "add") as! [String]
        }
    }
    
    @IBOutlet weak var addText: UITextField!
    var taskArray: [String] = []
    
    @IBAction func addButton(_ sender: Any) {
        if addText.text != "" {
            let userDefautls = UserDefaults.standard
            taskArray.append(addText.text!)
            userDefautls.set(taskArray, forKey: "add")
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

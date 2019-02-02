//
//  SaveViewController.swift
//  Documents
//
//  Created by Max Taylor on 1/31/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import UIKit

class SaveViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var textField: UITextView!
    @IBOutlet weak var navBar: UINavigationItem!
    
    var fileMgr: FileManager = FileManager.default
    var docsDir: String?
    var dataFile: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navBar.title = nameField.text
        
    }
    
    @IBAction func saveDocument(_ sender: Any) {
        
        let fileName = nameField.text
        let bodyField = textField.text
        
        let file = AppFile(fileName: fileName!)
        
        if file.writeFile(containing: bodyField!, withName: fileName!) {
            self.navigationController?.popViewController(animated: true)
        } else {
            print("Failed to write file with name: " + fileName!)
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

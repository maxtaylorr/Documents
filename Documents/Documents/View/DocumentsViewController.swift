//
//  DocumentsViewController.swift
//  Documents
//
//  Created by Max Taylor on 1/31/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import UIKit

class DocumentsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var documentsTableView: UITableView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let fileManager = FileManager.default
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let dirContents = try? fileManager.contentsOfDirectory(atPath: documentsURL.absoluteString)
        return dirContents!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = documentsTableView.dequeueReusableCell(withIdentifier: "fileCell", for: indexPath)
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        
        let file = documentsURL.lastPathComponent
        
        nameLabel.text = file
        //sizeLabel.text = documentsURL.lastPathComponent.count
        
        return cell

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

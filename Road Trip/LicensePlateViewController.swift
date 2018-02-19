//
//  LicensePlateViewController.swift
//  Road Trip iOS
//
//  Created by Aaron Whitfield on 2/6/18.
//  Copyright © 2018 Infinity Labs. All rights reserved.
//

import UIKit

class LicensePlateViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let cellContent = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Iowa", "Kansas", "Kentucky", "Louisiana"];
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "StateCell");
        
        cell.textLabel?.text = cellContent[indexPath.row];
        
        return cell;
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

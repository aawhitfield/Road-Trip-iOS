//
//  LicensePlateViewController.swift
//  Road Trip iOS
//
//  Created by Aaron Whitfield on 2/6/18.
//  Copyright © 2018 Infinity Labs. All rights reserved.
//

import UIKit

class LicensePlateViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    let cellContent = ["Alabama", "Alaska", "Arizona", "Arkansas", "California", "Colorado", "Connecticut", "Delaware", "Florida", "Georgia", "Hawaii", "Idaho", "Illinois", "Iowa", "Kansas", "Kentucky", "Louisiana", "Maine", "Maryland", "Massachusetts", "Michigan", "Minnesota", "Mississippi", "Missouri", "Montana", "Nebraska", "Nevada", "New Hampshire", "New Jersey", "New Mexico", "New York", "North Carolina", "North Dakota", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Vermont", "Virginia", "Washington", "West Virginia", "Wisconsin", "Wyoming"];
    
    var isSpotted = Array(repeating: false, count: 50);
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return cellContent.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "StateCell");
        let cell = tableView.dequeueReusableCell(withIdentifier: "StateTableViewCell", for: indexPath) as? StateTableViewCell
        
        cell?.stateLabel.text = cellContent[indexPath.row];
        cell?.stateImageView.image = UIImage(named: cellContent[indexPath.row]);
        
        if (isSpotted[indexPath.row])
        {
            cell?.accessoryType = .checkmark;
        }
        else
        {
            cell?.accessoryType = .none;
        }
        
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true);
        if let cell = tableView.cellForRow(at: indexPath as IndexPath)
        {
            if cell.accessoryType == .checkmark
            {
                cell.accessoryType = .none
                isSpotted[indexPath.row] = false;
                UserDefaults.standard.set(isSpotted, forKey: "permanentStates");
            }
            else
            {
                cell.accessoryType = .checkmark
                isSpotted[indexPath.row] = true;
                UserDefaults.standard.set(isSpotted, forKey: "permanentStates");
            }
        }
      
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90.0;
    }
    
 

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let arrayObject = UserDefaults.standard.object(forKey: "permanentStates");
        if let array = arrayObject as? [Bool]
        {
            isSpotted = array;
        }
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

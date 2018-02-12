//
//  BattleshipViewController.swift
//  Road Trip iOS
//
//  Created by Aaron Whitfield on 2/6/18.
//  Copyright © 2018 Infinity Labs. All rights reserved.
//

import UIKit

class BattleshipViewController: UIViewController {
  
    
    
    @IBOutlet var buttonA1: UIButton!
    @IBOutlet var buttonA2: UIButton!
    @IBOutlet var buttonA3: UIButton!
    @IBOutlet var buttonA4: UIButton!
    
    func displayHit()
    {
        let alertController = UIAlertController(title: "Battleship", message: "Hit", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    func displayMiss()
    {
        let alertController = UIAlertController(title: "Battleship", message: "Miss", preferredStyle: UIAlertControllerStyle.alert)
        alertController.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func displayResult(_ sender: UIButton)
    {
        switch sender.tag {
        case 1:
            displayMiss();
        case 2:
            displayHit();
        case 3:
            displayHit();
        case 4:
            displayMiss();
        default:
            displayMiss();
        }
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

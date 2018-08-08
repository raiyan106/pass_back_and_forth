//
//  ViewController.swift
//  pass_back_and_forth
//
//  Created by Raiyan Khan on 5/8/18.
//  Copyright © 2018 Raiyan Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SecondVCDelegate {

    
//    UI Components
    @IBOutlet weak var labelVC: UILabel!
    
    @IBOutlet weak var textFieldVC: UITextField!
    
    
    @IBAction func buttonVC(_ sender: Any) {
        performSegue(withIdentifier: "goToSVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSVC" {
            let destinationVC = segue.destination as! SecondViewController
            
            destinationVC.labelValue = textFieldVC.text
            destinationVC.delegateSVC = self
        }
    }
    
    
    func changeLabelOfFirstVC(value: String) {
//        print(value)
        labelVC.text = value
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


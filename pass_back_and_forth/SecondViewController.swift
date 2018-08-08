//
//  SecondViewController.swift
//  pass_back_and_forth
//
//  Created by Raiyan Khan on 5/8/18.
//  Copyright © 2018 Raiyan Khan. All rights reserved.
//

import UIKit

protocol SecondVCDelegate{
    func changeLabelOfFirstVC(value: String)
}

class SecondViewController: UIViewController {
    
//    Variables
    var labelValue: String?
    var delegateSVC: SecondVCDelegate?
    
//    UI Components
    
    @IBOutlet weak var labelSVC: UILabel!
    
    @IBOutlet weak var textFieldSVC: UITextField!
    
    
    @IBAction func buttonSVC(_ sender: Any) {
        let val = textFieldSVC.text
        delegateSVC?.changeLabelOfFirstVC(value: val!)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        labelSVC.text = labelValue
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

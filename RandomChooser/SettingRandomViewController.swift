//
//  SettingRandomViewController.swift
//  RandomChooser
//
//  Created by Yuki Waka on 2021-09-05.
//

import UIKit

class SettingRandomViewController: UIViewController {

    @IBOutlet var animal1 : UITextField!
    @IBOutlet var animal2 : UITextField!
    @IBOutlet var option1 : UITextField!
    @IBOutlet var option2 : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Setting Random option"

        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func goToResultPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let resultVC = storyboard.instantiateViewController(identifier: "ResultVC") as! ResultViewController
        
       // resultVC.numWon = self.numWon
        //resultVC.numLost = self.numLost
        
        
        self.navigationController?.pushViewController(resultVC, animated: true)
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

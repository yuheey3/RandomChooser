//
//  SettingRandom4ViewController.swift
//  RandomChooser
//
//  Created by Yuki Waka on 2021-09-15.
//

import UIKit

class SettingRandom4ViewController: UIViewController {

    @IBOutlet var animal1 : UITextField!
    @IBOutlet var animal2 : UITextField!
    @IBOutlet var animal3 : UITextField!
    @IBOutlet var animal4 : UITextField!
    @IBOutlet var option1 : UITextField!
    @IBOutlet var option2 : UITextField!
    @IBOutlet var option3 : UITextField!
    @IBOutlet var option4 : UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = "Setting Random option"
      
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func goToResultPage(){
        
        let options = [option1.text, option2.text, option3.text, option4.text].shuffled()

        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let resultVC = storyboard.instantiateViewController(identifier: "Result4VC") as! Result4ViewController
        
        resultVC.animal1 = animal1.text!
        resultVC.animal2 = animal2.text!
        resultVC.animal3 = animal3.text!
        resultVC.animal4 = animal4.text!
        resultVC.option1 = options[0]!
        resultVC.option2 = options[1]!
        resultVC.option3 = options[2]!
        resultVC.option4 = options[3]!
        
        
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

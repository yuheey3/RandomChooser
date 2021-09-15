//
//  ViewController.swift
//  RandomChooser
//
//  Created by Yuki Waka on 2021-09-05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblNumber : UILabel!
    var numOption : Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Select option"
        self.lblNumber.text = String(numOption)
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func btnPlus(){
        if(numOption != 6){
        numOption += 1
        self.lblNumber.text = String(numOption)
        }
    }
    
    @IBAction func btnMinus(){
        if(numOption != 2){
        numOption -= 1
        self.lblNumber.text = String(numOption)
        }
    }
    
    @IBAction func goToSettingRandomPage(){
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        if(numOption == 2){
        let settingRandomVC = storyboard.instantiateViewController(identifier: "SettingRandomVC") as! SettingRandomViewController
            
            self.navigationController?.pushViewController(settingRandomVC, animated: true)
        }
        else if(numOption == 3){
            let settingRandom3VC = storyboard.instantiateViewController(identifier: "SettingRandom3VC") as! SettingRandom3ViewController
            
            self.navigationController?.pushViewController(settingRandom3VC, animated: true)
        }
        else if(numOption == 4){
            let settingRandom4VC = storyboard.instantiateViewController(identifier: "SettingRandom4VC") as! SettingRandom4ViewController
            
            self.navigationController?.pushViewController(settingRandom4VC, animated: true)
        }
        else if(numOption == 5){
            let settingRandom5VC = storyboard.instantiateViewController(identifier: "SettingRandom5VC") as! SettingRandom5ViewController
            
            self.navigationController?.pushViewController(settingRandom5VC, animated: true)
        }
        
       // settingRandomVC.numWon = self.numWon
       // settingRandomVC.numLost = self.numLost
        
       
        
        
    }

}


//
//  Result4ViewController.swift
//  RandomChooser
//
//  Created by Yuki Waka on 2021-09-15.
//

import UIKit

class Result4ViewController: UIViewController {

    @IBOutlet var animal1Lbl : UILabel!
    @IBOutlet var animal2Lbl : UILabel!
    @IBOutlet var animal3Lbl : UILabel!
    @IBOutlet var animal4Lbl : UILabel!
    @IBOutlet var option1Lbl : UILabel!
    @IBOutlet var option2Lbl: UILabel!
    @IBOutlet var option3Lbl: UILabel!
    @IBOutlet var option4Lbl: UILabel!
    var animal1 : String = ""
    var animal2 : String = ""
    var animal3 : String = ""
    var animal4 : String = ""
    var option1 : String = ""
    var option2 : String = ""
    var option3 : String = ""
    var option4 : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Result"
        
        animal1Lbl.text = animal1
        animal2Lbl.text = animal2
        animal3Lbl.text = animal3
        animal4Lbl.text = animal4
        option1Lbl.text = option1
        option2Lbl.text = option2
        option3Lbl.text = option3
        option4Lbl.text = option4

        // Do any additional setup after loading the view.
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

//
//  ViewController.swift
//  splitBills
//
//  Created by admin on 01/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var noOfPeopleLabel: UILabel!
    @IBOutlet weak var amountCollector: UITextField!
    @IBOutlet weak var peopleCollector: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionButton(_ sender: Any) {
        let amount=Double(amountCollector.text!),people=Int(peopleCollector.text!)
        if(amount != nil && people != nil){
        let split = amount!/Double(people!)
        answerLabel.text="Each person should pay ₹\(split)"
        }
        
    }
    
}


//
//  ViewController.swift
//  FinalGrade
//
//  Created by  on 3/30/22.
//

import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var currentGrade: UITextField!
    @IBOutlet weak var desiredGrade: UITextField!
    @IBOutlet weak var examWorth: UITextField!
    @IBOutlet weak var neededGrade: UILabel!
    @IBOutlet weak var extraCredit: UILabel!
    
    @IBAction func calculate(_ sender: UIButton)
    {
        currentGrade.resignFirstResponder()
        var currGrade = Double(currentGrade.text!) ?? 0.0
        if currGrade < 0
        {
            currGrade = 0
        }
        currentGrade.text = ""
        desiredGrade.resignFirstResponder()
        var desGrade = Double(desiredGrade.text!) ?? 0.0
        if desGrade < 0
        {
            desGrade = 0.0
        }
        desiredGrade.text = ""
        examWorth.resignFirstResponder()
        var exWorth = Double(examWorth.text!) ?? 0.0
        if exWorth < 0
        {
            exWorth = 0
        }
        examWorth.text = ""
        
        var examWeight = exWorth/100
        var currentGradeWeight = 1-examWeight
        var weightedCurrentGrade = currentGradeWeight*currGrade
        var x1 = desGrade - weightedCurrentGrade
        var x = x1/examWeight
        neededGrade.text = String(x)
        
        if x<=100
        {
            view.backgroundColor = UIColor.init(red: 0.66, green: 0.91, blue: 0.63, alpha: 1)
        }
        else
        {
            view.backgroundColor = UIColor.init(red: 0.85, green: 0.49, blue: 0.49, alpha: 1)
            extraCredit.text = "Ask for extra credit"
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        extraCredit.text = ""
        // Do any additional setup after loading the view.
    }


}


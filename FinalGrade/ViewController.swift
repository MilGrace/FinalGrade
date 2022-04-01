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
            view.backgroundColor = UIColor.init(red: 0.66, green: <#T##CGFloat#>, blue: <#T##CGFloat#>, alpha: <#T##CGFloat#>)
        }
        else
        {
            
        }
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


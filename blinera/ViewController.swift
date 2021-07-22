//
//  ViewController.swift
//  blinera
//
//  Created by Mergime Ibrahimi on 21/03/2020.
//  Copyright © 2020 Mergime Ibrahimi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var leftImageView: UIImageView!
   
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore =  0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        //random numbers
        let leftNumber = Int.random(in: 2...14)
        
        let rightNumber = Int.random(in: 2...14)
        //update images
        leftImageView.image = UIImage(named: "card\(leftNumber)" )
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //compare the random numbbers
        if leftNumber > rightNumber{
             //left player wins
            leftScore += 1
            
            leftScoreLabel.text = String(leftScore)
            
        } else if leftNumber < rightNumber{
            //right player wins
            rightScore += 1
            
            rightScoreLabel.text = String(rightScore)
             
        } else {
            
        }
        
    }
    

}


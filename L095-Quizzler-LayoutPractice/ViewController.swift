//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [
        ["2 + 3 = ?", "True"],
        ["4 + 5 = ?", "True"],
        ["5 - 2 = ?", "False"]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //questionLabel.self.text = "23"
        updateUI()
        
        
        //trueButton.setTitle("5", for: .normal)
        
        //falseButton.setTitle("3", for: .normal)
        
        
    }
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer   {
            print("Right!")
        }
        else    {
            print("Wrong!")
        }
        
        if quiz.count > questionNumber + 1 {
            questionNumber += 1
        }  else {
            questionNumber = 0
            print("Finish")
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber][0]
    }
    

}


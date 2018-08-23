//
//  ViewController.swift
//  Trivia
//
//  Created by Jordan on 8/23/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    var questions: [(String, String)] = [("Question 1", "a"),
                                         ("Question 2", "a"),
                                         ("Question 3", "a"),
                                         ("Question 4", "a"),
                                         ("Question 5", "a"),
                                         ("Question 6", "a"),
                                         ("Question 7", "a"),
                                         ("Question 8", "a")
                                        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questionLabel.text = questions[0].0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func answerA(_ sender: UIButton) {
    }
    
    @IBAction func answerB(_ sender: UIButton) {
    }
    
}


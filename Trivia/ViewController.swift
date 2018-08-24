//
//  ViewController.swift
//  Trivia
//
//  Created by Jordan on 8/23/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit

struct Question {
    
    var question: String
    var correctAnswer: String
    var wrongAnswer: String
    
}

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonOneLabel: UIButton!
    @IBOutlet weak var buttonTwoLabel: UIButton!
    @IBOutlet weak var rightOrWrongLabel: UILabel!
    
    
    //generate questions with my struct
    let questionOne = Question(question: "Question 1", correctAnswer: "a", wrongAnswer: "b")
    let questionTwo = Question(question: "Question 2", correctAnswer: "a", wrongAnswer: "b")
    let questionThree = Question(question: "Question 3", correctAnswer: "a", wrongAnswer: "b")
    let questionFour = Question(question: "Question 4", correctAnswer: "a", wrongAnswer: "b")
    
    lazy var questionBank = [questionOne, questionTwo, questionThree, questionFour]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        generatateQuestionLabel()
        setButtonLabels()
    }
    
    
    @IBAction func buttonOne(_ sender: UIButton) {
        buttonOneLabel.setTitle(questionBank[0].correctAnswer, for: .normal)
    }
    

    @IBAction func buttonTwo(_ sender: UIButton) {
        buttonTwoLabel.setTitle(questionOne.wrongAnswer, for: .normal)
        print(questionBank[0].wrongAnswer)
    }
    
    func generatateQuestionLabel() {
        questionLabel.text = questionBank[0].question
    }
    
    func checkAnswer() {
        
        
        
    }
    
    func setButtonLabels() {
        buttonOneLabel.setTitle(questionOne.correctAnswer, for: .normal)
        buttonTwoLabel.setTitle(questionOne.wrongAnswer, for: .normal)
    }
}

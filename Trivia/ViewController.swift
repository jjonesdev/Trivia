//
//  ViewController.swift
//  Trivia
//
//  Created by Jordan on 8/23/18.
//  Copyright © 2018 Jordan Jones. All rights reserved.
//

import UIKit
import GameKit

struct Question {
    
    var question: String
    var correctAnswer: String
    var wrongAnswerOne: String
    var wrongAnswerTwo: String
    var wrongAnswerThree: String
    
}

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var buttonFour: UIButton!
    @IBOutlet weak var rightOrWrongLabel: UILabel!

    var answerButtons: [UIButton] = []
    var questions: [Question]?
    var rightOrWrong: [String] = []
    var rightOrWrongIndex = 0
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        questions = [
                    Question(question: "Question 1", correctAnswer: "a", wrongAnswerOne: "b", wrongAnswerTwo: "c", wrongAnswerThree: "d"),
                    Question(question: "Question 2", correctAnswer: "a", wrongAnswerOne: "b", wrongAnswerTwo: "c", wrongAnswerThree: "d"),
                    Question(question: "Question 3", correctAnswer: "a", wrongAnswerOne: "b", wrongAnswerTwo: "c", wrongAnswerThree: "d"),
                    Question(question: "Question 4", correctAnswer: "a", wrongAnswerOne: "b", wrongAnswerTwo: "c", wrongAnswerThree: "d")
                    ]
        
        index = randomQuestionIndex()
        
        answerButtons = [buttonOne, buttonTwo, buttonThree, buttonFour]
        
        rightOrWrong = [questions![index].correctAnswer, questions![index].wrongAnswerOne, questions![index].wrongAnswerTwo, questions![index].wrongAnswerThree]
        
        generatateQuestionLabel()
        setButtonLabels()
    }
    
    
//    @IBAction func buttonOne(_ sender: UIButton) {
//        buttonOneLabel.setTitle(rightOrWrong[0], for: .normal)
//        if buttonOneLabel.currentTitle == questions![index].correctAnswer {
//            rightOrWrongLabel.text = "Correct"
//            view.backgroundColor = UIColor.cyan
//        } else {
//            rightOrWrongLabel.text = "Wrong"
//        }
//    }
//
//
//    @IBAction func buttonTwo(_ sender: UIButton) {
//        buttonTwoLabel.setTitle(rightOrWrong[1], for: .normal)
//        if buttonTwoLabel.currentTitle == questions![index].correctAnswer {
//            rightOrWrongLabel.text = "Correct"
//            view.backgroundColor = UIColor.cyan
//        } else {
//            rightOrWrongLabel.text = "Wrong"
//        }
//    }
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        generatateQuestionLabel()
        setButtonLabels()
        
    }
    
    func generatateQuestionLabel() {
        index = randomQuestionIndex()
        questionLabel.text = questions![index].question
    }
    
    func randomQuestionIndex() -> Int {
        let questionIndex = Int(arc4random_uniform(UInt32(questions!.count)))
        return questionIndex
    }
    
    
    func setButtonLabels() {
        rightOrWrong = GKRandomSource.sharedRandom().arrayByShufflingObjects(in: rightOrWrong) as! [String]
        rightOrWrongIndex = 0
        for button in answerButtons {
            print(button)
            button.setTitle(rightOrWrong[rightOrWrongIndex], for: .normal)
            rightOrWrongIndex += 1
        }
    }
}

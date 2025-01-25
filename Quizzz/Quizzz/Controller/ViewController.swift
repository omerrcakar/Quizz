//
//  ViewController.swift
//  Quizzz
//
//  Created by ÖMER  on 24.01.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var quizBrain = QuizBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.titleLabel?.text
        let userGotItRight = quizBrain.checkAnswer(userAnswer!)
        
        if userGotItRight {
            sender.backgroundColor = .green
            sender.layer.cornerRadius = 20
            sender.layer.borderWidth = 3
            sender.layer.borderColor = UIColor.black.cgColor
            
        }else{
            sender.backgroundColor = .red
            sender.layer.cornerRadius = 20
            sender.layer.borderWidth = 3
            sender.layer.borderColor = UIColor.black.cgColor
        }
        
        quizBrain.nextQuestion()
        
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
       
    }
    
    @objc func updateUI() {
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.clipsToBounds = true
        progressBar.layer.cornerRadius = 5
        
        progressBar.progress = quizBrain.getProgress()
        trueButton.backgroundColor = .clear
        trueButton.layer.borderWidth = .zero
        falseButton.backgroundColor = .clear
        falseButton.layer.borderWidth = .zero
        
        scoreLabel.text = "Score: \(quizBrain.getScore()) / \(quizBrain.quiz.count)"
    }
    
}


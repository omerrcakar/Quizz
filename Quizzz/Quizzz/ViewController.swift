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
    
    let quiz = [
        "Four + Two is equal to Six.",
        "Five - Three is greater than One",
        "Three + Eight is less than Ten"
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trueButton.titleLabel?.textColor = .white
        trueButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        falseButton.titleLabel?.textColor = .white
        falseButton.titleLabel?.font = .systemFont(ofSize: 20, weight: .bold)
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        if questionNumber == quiz.count - 1 {
            questionNumber = 0
        }else{
            questionNumber += 1
        }
        
        updateUI()
    }
    
    func updateUI() {
        questionLabel.text = quiz[questionNumber]
    }
    
}


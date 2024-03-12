//
//  ViewController.swift
//  Trivia
//
//  Created by Hector J. Baeza on 3/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionCount: UILabel!
    
    @IBOutlet weak var genre: UILabel!
    
    @IBOutlet weak var triviaQuestion: UILabel!
    
    
    @IBOutlet weak var optionOne: UIButton!
    
    @IBOutlet weak var optionTwo: UIButton!
    
    @IBOutlet weak var optionThree: UIButton!
    
    @IBOutlet weak var optionFour: UIButton!
    
    @IBAction func usersAnswerButtonTap(_ sender: UIButton) {
        let usersAnswer = sender.titleLabel?.text ?? "True"
        let rightAnswer = trivia.checkAnswer(userAnswer: usersAnswer)
        
        if rightAnswer {
            sender.backgroundColor = UIColor.green
        }
    }
    var trivia = TriviaQuestions()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        triviaQuestion.text = trivia.getTriviaQuestion()
        triviaQuestion.layer.cornerRadius = 20
        triviaQuestion.layer.masksToBounds = true
        

        
        
    

      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

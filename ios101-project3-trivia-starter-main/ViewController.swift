//
//  ViewController.swift
//  Trivia
//
//  Created by Hector J. Baeza on 3/11/24.
//
import Foundation
import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionCount: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var triviaQuestionLabel: UILabel!
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    @IBOutlet weak var optionThreeButton: UIButton!
    @IBOutlet weak var optionFourButton: UIButton!
    var displayQuestions = DisplayQuestions()
      var currentQuestionIndex = 0
      
      override func viewDidLoad() {
          super.viewDidLoad()
          
          // Load the first question
          loadQuestion()
      }
      
      func loadQuestion() {
          // Check if there are more questions
          if currentQuestionIndex < displayQuestions.triviaQuestions.count {
              // Load the current question
              displayQuestions.loadQuestion(index: currentQuestionIndex, questionLabel: triviaQuestionLabel, optionOneButton: optionOneButton, optionTwoButton: optionTwoButton, optionThreeButton: optionThreeButton, optionFourButton: optionFourButton)
          } else {
              // No more questions, display end of trivia
              triviaQuestionLabel.text = "End of Trivia"
              optionOneButton.isHidden = true
              optionTwoButton.isHidden = true
              optionThreeButton.isHidden = true
              optionFourButton.isHidden = true
          }
      }
      
      @IBAction func optionButtonTapped(_ sender: UIButton) {
          // Get the selected answer from the button's title
          guard let selectedAnswer = sender.currentTitle else {
              return
          }
          
          // Check if the selected answer is correct
          let isCorrect = displayQuestions.checkAnswer(questionIndex: currentQuestionIndex, selectedAnswer: selectedAnswer)
          
          // Update UI to display feedback
          if isCorrect {
              sender.backgroundColor = UIColor.green
          } else {
              sender.backgroundColor = UIColor.red
          }
          
          // Load the next question after a short delay
          DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
              self.loadNextQuestion()
          }
      }

      func loadNextQuestion() {
          // Reset button colors
          optionOneButton.backgroundColor = UIColor.white
          optionTwoButton.backgroundColor = UIColor.white
          optionThreeButton.backgroundColor = UIColor.white
          optionFourButton.backgroundColor = UIColor.white
          
          // Increment the question index
          currentQuestionIndex += 1
          
          // Load the next question
          loadQuestion()
      }
}


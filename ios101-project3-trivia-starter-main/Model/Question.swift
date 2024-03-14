//
//  Question.swift
//  Trivia
//
//  Created by Hector J. Baeza on 3/11/24.
//

import Foundation
import UIKit

struct TriviaQuestion {
    let genre: String
    let questionText: String
    let answerChoices: [String]
    let correctAnswerIndex: Int // Index of the correct answer in answerChoices
    func checkAnswer(selectedIndex: Int) -> Bool {
        return selectedIndex == correctAnswerIndex
    }
}

struct DisplayQuestions {
    let triviaQuestions = [
        TriviaQuestion(genre: "Geography", questionText: "What country borders Belize?", answerChoices: ["Cuba", "Canada", "Mexico", "Italy"], correctAnswerIndex: 2),
        TriviaQuestion(genre: "History", questionText: "Who was the first president of the USA?", answerChoices: ["George Washington", "Donald J. Trump", "Witney Houston", "Abraham Lincoln"], correctAnswerIndex: 0),
        TriviaQuestion(genre: "Culture", questionText: "Who is the king of pop?", answerChoices: ["Ed Sheeran", "Harry Styles", "Mariah Carey", "Michael Jackson"], correctAnswerIndex: 3),
        TriviaQuestion(genre: "Geography", questionText: "What continent is Greenland in?", answerChoices: ["Europe", "Asia", "North America", "Antarctica"], correctAnswerIndex: 2),
    ]
    
    mutating func checkAnswer(questionIndex: Int, selectedAnswer: String) -> Bool {
        let correctAnswerIndex = triviaQuestions[questionIndex].correctAnswerIndex
        return selectedAnswer == triviaQuestions[questionIndex].answerChoices[correctAnswerIndex]
    }
    
    func loadQuestion(index: Int, questionLabel: UILabel, optionOneButton: UIButton, optionTwoButton: UIButton, optionThreeButton: UIButton, optionFourButton: UIButton) {
        let currentQuestion = triviaQuestions[index]
        
        // Update UI elements
        questionLabel.text = currentQuestion.questionText
        
        // Assign titles to each button individually
        optionOneButton.setTitle(currentQuestion.answerChoices[0], for: .normal)
        optionTwoButton.setTitle(currentQuestion.answerChoices[1], for: .normal)
        optionThreeButton.setTitle(currentQuestion.answerChoices[2], for: .normal)
        optionFourButton.setTitle(currentQuestion.answerChoices[3], for: .normal)
    }
}


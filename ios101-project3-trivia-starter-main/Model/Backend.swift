//
//  Backend.swift
//  Trivia
//
//  Created by Hector J. Baeza on 3/11/24.
//

import Foundation
import UIKit

struct TriviaQuestions {
    let questions = [
        Question(count: 1, genre: "Geography", text: "What country borders Belize?", answer: "Mexico", color: UIColor.black),
        Question(count: 2, genre: "History", text: "Who was the first president of the USA?", answer: "George Washington", color: UIColor.black),
        Question(count: 3, genre: "Culture", text: "Who is the king of pop?", answer: "Michael Jackson", color: UIColor.black),
        Question(count: 4, genre: "Geography", text: "What contintent is Greenland in?", answer: "North America", color: UIColor.black),
    ]
    var numQuestion = 0
    
    //Checks if user selection matches the text from questions above.
    func checkAnswer(userAnswer: String) -> Bool {
        if userAnswer == questions[numQuestion].text {
            return true
        } else {
            return false
        }
    }
    
    func getTriviaQuestion() -> String {
        return questions[numQuestion].text
        
        func getCount() -> Float {
            let count = Float(numQuestion + 1) / Float(questions.count)
            return count
        }
    
        
    }

}

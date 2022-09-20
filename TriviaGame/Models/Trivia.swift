//
//  Trivia.swift
//  TriviaGame
//
//  Created by Leith on 19/9/2022.
//

import Foundation

struct Trivia: Decodable{
    var results: [Result]
    
    struct Result: Decodable, Identifiable {
        var id: UUID{
            UUID()
        }
        var category: String
        var type: String
        var difficulty: String
        var question: String
        var correctAnswer: String
        var incorrectAnswers: [String]
        
        var formattedQuestion: AttributedString{
            do{
                return try AttributedString(markdown: correctAnswer)
            }catch{
                print("Error setting formatted question: \(error)")
                return ""
            }
        }
        var answers: [Answer]{
            do {
                let correct = [Answer(text: try AttributedString(markdown: question), isCorrect: true)]
                let incorrects = try incorrectAnswers.map{ answer in
                    Answer(text: try AttributedString(markdown: question), isCorrect: false)
                }
                let allAnswers = correct + incorrects
                
                return allAnswers.shuffled()
                
            } catch  {
                print("Error setting answers: \(error)")
                return []
            }
        }
    }
}

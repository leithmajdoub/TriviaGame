//
//  Answer.swift
//  TriviaGame
//
//  Created by Leith on 18/9/2022.
//

import Foundation

struct Answer: Identifiable{
    var id = UUID()
    var text: AttributedString
    var  isCorrect: Bool
}

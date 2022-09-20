//
//  AnswerRow.swift
//  TriviaGame
//
//  Created by Leith on 18/9/2022.
//

import SwiftUI

struct AnswerRow: View {
    var answer: Answer
    @State private var isSelected: Bool = false
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        HStack(spacing: 20){
            Image(systemName: "circle.fill")
            
            Text(answer.text)
                .bold()
            
            if isSelected{
                Spacer()
                
                Image(systemName: answer.isCorrect ? "checkmark.circle.fill" : "x.circle.fill")
                    .foregroundColor(answer.isCorrect ? Color.green : Color.red)
            }
            
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .foregroundColor(triviaManager.answerSelected ? (answer.isCorrect ? Color.green : Color.red) : .purple)
        .background(.white)
        .cornerRadius(20)
        .shadow(color: isSelected ? (answer.isCorrect ? Color.green : Color.red) : .purple, radius: 5, x: 0.5, y: 0.5)
        .onTapGesture {
            if !triviaManager.answerSelected{
                isSelected = true
                triviaManager.selectAnswer(answer: answer)
                
            }
            
        }
        
        
    }
}

struct AnswerRow_Previews: PreviewProvider {
    static var previews: some View {
        AnswerRow(answer: Answer(text: "Canberra", isCorrect: false))
            .environmentObject(TriviaManager())
    }
}

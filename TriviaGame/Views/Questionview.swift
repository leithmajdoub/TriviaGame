//
//  QuestionView.swift
//  TriviaGame
//
//  Created by Leith on 17/9/2022.
//

import SwiftUI

struct QuestionView: View {
    var body: some View {
        ZStack {
            RadialGradient(colors: [.white, .yellow], center: .center, startRadius: 0, endRadius: 500)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40){
                HStack(spacing: 20){
                    Text("Trivia Game")
                        .lilacTitle()
                    
                    Spacer()
                    
                    Text("1 out of 10")
                        .foregroundColor(.purple)
                    
                    
                }
                .padding()
                
                ProgressBar(progress: 40)
                
                VStack(alignment: .leading, spacing: 20){
                    
                    Text("What's the capital of australia ?")
                        .font(.system(size: 20))
                        .bold()
                        .foregroundColor(.gray)
                }
                
            }
            
            
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

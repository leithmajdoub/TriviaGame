//
//  ContentView.swift
//  TriviaGame
//
//  Created by Leith on 16/9/2022.
//

import SwiftUI

struct ContentView: View {
    @State var triviaManager = TriviaManager()
    var body: some View {
        NavigationStack{
            ZStack {
                RadialGradient(colors: [.white, .yellow], center: .center, startRadius: 0, endRadius: 500)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 40){
                    VStack(spacing: 20){
                        Text("Trivia Game")
                            .lilacTitle()
                        
                        Text("Are you ready to test out your trivia skills ?")
                            .foregroundColor(.purple)
                        
                    }
                    
                    NavigationLink{
                        TriviaView()
                            .environmentObject(triviaManager)
                    }label: {
                        PrimaryButton(text: "I'm ready to rumble ⚡️")
                    }
                    
                    
                }
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

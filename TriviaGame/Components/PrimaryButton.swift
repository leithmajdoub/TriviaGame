//
//  PrimaryButton.swift
//  TriviaGame
//
//  Created by Leith on 16/9/2022.
//

import SwiftUI

struct PrimaryButton: View {
    var text: String
    var background: Color = Color(.purple)
    
    var body: some View {
        Text(text)
            .foregroundColor(.white)
            .font(.headline)
            .padding()
            .background(background)
            .cornerRadius(20)
            .shadow(radius: 9)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(text: "Next")
    }
}

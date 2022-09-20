//
//  TriviaView.swift
//  TriviaGame
//
//  Created by Leith on 19/9/2022.
//

import SwiftUI

struct TriviaView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    var body: some View {
        QuestionView()
            .environmentObject(triviaManager)
    }
}

struct TriviaView_Previews: PreviewProvider {
    static var previews: some View {
        TriviaView()
            .environmentObject(TriviaManager())
    }
}

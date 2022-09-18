//
//  ProgressBar.swift
//  TriviaGame
//
//  Created by Leith on 17/9/2022.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading){
            Rectangle()
                .frame(maxWidth: 350, maxHeight: 4)
                .foregroundColor(.gray)
                .cornerRadius(13)
            
            Rectangle()
                .frame(maxWidth: progress, maxHeight: 4)
                .foregroundColor(.purple)
                .cornerRadius(13)
            
            
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}

//
//  Extensions.swift
//  TriviaGame
//
//  Created by Leith on 17/9/2022.
//

import Foundation
import SwiftUI

extension Text{
    func lilacTitle() -> some View {
        self.font(.title)
            .fontWeight(.heavy)
            .foregroundColor(.purple)
    }
}

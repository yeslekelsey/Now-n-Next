//
//  Advocacy Quiz.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/20/23.
//

import SwiftUI

struct AQ_Question_1: View {
    @State private var right = "choice C"
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Question 1: ")
                        .font(.title)
                    Text("What is global warming?")
                    Button("The process in which a planet becomes warmer by orbiting closer to the sun") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("The Earth becoming warmer by melting the ice") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("The long-term heating of Earth’s surface due to human activities") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice A" || right == "choice B") { Text("Sorry, wrong answer! Go back and check the websites again.")}
                    else if(right == "choice C") {
                        Text("Right, good job!")}
                    NavigationLink(destination: AQ_Question_2()) {
                        Text("Next Question ➡️")
                    }
                }
            }
        }
    }
}

struct AQ_Question_1_Previews: PreviewProvider {
    static var previews: some View {
        AQ_Question_1()
    }
}

//
//  AQ Question 2.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/20/23.
//

import SwiftUI

struct AQ_Question_2: View {
    @State private var right = "choice C"
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Question 2: ")
                        .font(.title)
                    Text("What is NOT a way to help prevent climate change?")
                    Button("Using renewable energy") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Taking public transport") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Saving energy") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Traveling often") {
                        right = "choice D" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice A" || right == "choice B" || right == "choice C") { Text("Sorry, wrong answer! Go back and check the websites again.")}
                    else if(right == "choice D") {
                        Text("Right, good job!")}
                    NavigationLink(destination: AQ_Question_3()) {
                        Text("Next Question ➡️")
                    }
                }
            }
        }
    }
}

struct AQ_Question_2_Previews: PreviewProvider {
    static var previews: some View {
        AQ_Question_2()
    }
}

//
//  HQ Question 1.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/20/23.
//

import SwiftUI

struct HQ_Question_1: View {
    @State private var right = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.98039215686, green: 0.81960784313, blue: 0.57647058823)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Question 1: ")
                        .font(.title)
                    Text("Why is mental health important?")
                    Button("We can manage and understand our feelings") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("To prevent more serious problems later on") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("To create a better, more mindful world") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice A" || right == "choice B" || right == "choice C") {
                        Text("Right, good job!")
                       }
                    NavigationLink(destination: HQ_Question_2()) {
                        Text("Next Question ➡️")
                    }
                }
            }
        }
    }
}

struct HQ_Question_1_Previews: PreviewProvider {
    static var previews: some View {
        HQ_Question_1()
    }
}

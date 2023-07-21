//
//  AQ Question 3.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/20/23.
//

import SwiftUI

struct AQ_Question_3: View {
    @State private var right = "choice C"
    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Text("Question 3: ")
                        .font(.title)
                    Text("Which of these is the best way to contact a legislator?")
                    Button("Respectfully call for specific action") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Use informal language to lighten the mood ") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Demand that they agree with your views ") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Write a long essay arguing your views") {
                        right = "choice D" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice B" || right == "choice C" || right == "choice D") { Text("Sorry, wrong answer! Go back and check the websites again.")}
                    else if(right == "choice A") {
                        Text("Right, good job!")}
                    NavigationLink(destination: Civil_Engagement()) {
                        Text("Thank you for taking our quiz! \nBack to Advocacy ➡️")
                    }
                }
            }
        }
    }
}

struct AQ_Question_3_Previews: PreviewProvider {
    static var previews: some View {
        AQ_Question_3()
    }
}

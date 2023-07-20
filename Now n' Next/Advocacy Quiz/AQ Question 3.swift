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
                    Text("Insert question here...")
                    Button("choice A") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("choice B") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("choice C") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice A" || right == "choice B") { Text("Sorry, wrong answer! Go back and check the websites again.")}
                    else if(right == "choice C") {
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

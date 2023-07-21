//
//  HQ Question 2.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/20/23.
//

import SwiftUI

struct HQ_Question_2: View {
    @State private var right = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.98039215686, green: 0.81960784313, blue: 0.57647058823)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Question 2: ")
                        .font(.title)
                    Text("What is something you can do to improve your mental health?")
                    Button("Plan new things to look forward to") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Eat whatever junk food you want") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Using substances to cope with difficult feelings") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice B" || right == "choice C") { Text("Sorry, wrong answer! Go back and check the websites again.")}
                    else if(right == "choice A") {
                        Text("Right, good job!")}
                    NavigationLink(destination: HQ_Question_3()) {
                        Text("Next Question ➡️")
                    }
                }
            }
        }
    }
}

struct HQ_Question_2_Previews: PreviewProvider {
    static var previews: some View {
        HQ_Question_2()
    }
}

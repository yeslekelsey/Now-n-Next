//
//  HQ Question 3.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/20/23.
//

import SwiftUI

struct HQ_Question_3: View {
    @State private var right = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.98039215686, green: 0.81960784313, blue: 0.57647058823)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Question 3: ")
                        .font(.title)
                    Text("Should you talk to someone for support?")
                    Button("Yes, but only when you feel like it.") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Yes, and regularly to avoid bottling up our emotions") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("No, people cannot be trusted") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice A" || right == "choice C") { Text("Sorry, wrong answer! Go back and check the websites again.")}
                    else if(right == "choice B") {
                        Text("Right, good job!")}
                    NavigationLink(destination: Health_and_Wellness()) {
                        Text("Thank you for taking our quiz! \nBack to Health & Wellness ➡️")
                    }
                }
            }
        }
    }
}

struct HQ_Question_3_Previews: PreviewProvider {
    static var previews: some View {
        HQ_Question_3()
    }
}

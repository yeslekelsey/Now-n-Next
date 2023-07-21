//
//  BQ Question 3.swift
//  Now n' Next
//
//  Created by Shradha Bista on 7/21/23.
//

import SwiftUI

struct BQ_Question_3: View {
    @State private var right = ""
    var body: some View {
        ZStack {
            Color(hue: 0.475, saturation: 0.308, brightness: 0.91)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Question 3:")
                    .font(.title)
                Text("What’s an example of a short-term financial goal?")
                Button("Setting an emergency fund") {
                    right = "choice A" }
                .buttonStyle(BorderedProminentButtonStyle())
                Button("Saving for child’s tuition") {
                    right = "choice B" }
                .buttonStyle(BorderedProminentButtonStyle())
                Button("Saving for retirement") {
                    right = "choice C" }
                .buttonStyle(BorderedProminentButtonStyle())
                Button("paying off mortgage") {
                    right = "choice D" }
                .buttonStyle(BorderedProminentButtonStyle())
                if(right == "choice A" || right == "choice C" || right == "choice D") {
                    Text("Sorry, wrong answer! Go back and check the websites again.")
                } else if(right == "choice B") {
                    Text("Right, good job!")
                    NavigationLink(destination: Planning_For_Future()) {
                        Text("Thank you for taking our quiz! \nBack to Planning for the Future! ➡️") }
                }
            }
        }
    }
}
            struct BQ_Question_3_Previews: PreviewProvider {
                static var previews: some View {
                    BQ_Question_3()
                }
            }

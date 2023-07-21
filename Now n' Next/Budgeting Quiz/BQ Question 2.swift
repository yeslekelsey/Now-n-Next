//
//  Planning for Future.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct BQ_Question_2: View {
    @State private var right = ""
    var body: some View {
        ZStack {
            Color(hue: 0.475, saturation: 0.308, brightness: 0.91)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Question 1:")
                    .font(.title)
                Text("What’s the 50/30/20 rule?")
                Button("50% wants, 30% needs, 20% savings/debt") {
                    right = "choice A" }
                .buttonStyle(BorderedProminentButtonStyle())
                Button("50% needs, 30% wants, 20% savings/debt") {
                    right = "choice B" }
                .buttonStyle(BorderedProminentButtonStyle())
                Button("50% savings/debt, 30% needs, 20% wants") {
                    right = "choice C" }
                .buttonStyle(BorderedProminentButtonStyle())
                Button("50% needs, 30% savings/debt , 20% wants") {
                    right = "choice D" }
                .buttonStyle(BorderedProminentButtonStyle())
                if(right == "choice A" || right == "choice C" || right == "choice D") {
                    Text("Sorry, wrong answer! Go back and check the websites again.")
                } else if(right == "choice B") {
                    Text("Right, good job!")
                    NavigationLink(destination: BQ_Question_3()) {
                        Text("Next question") }
                }
            }
        }
    }
    
    
    struct BQ_Question_2_Previews: PreviewProvider {
        static var previews: some View {
            BQ_Question_2()
        }
    }
    
}

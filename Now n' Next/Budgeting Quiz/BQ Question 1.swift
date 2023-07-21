//
//  BQ Question 1.swift
//  Now n' Next
//
//  Created by Shradha Bista on 7/21/23.
//

import SwiftUI

struct BQ_Question_1: View {
    @State private var right = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 0.9686274509803922, green: 0.8509803921568627, blue: 0.6313725490196078)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("Question 1:")
                        .font(.title)
                    Text("What’s personal finance?")
                    Button("Delivering value to meet the needs of a target market") {
                        right = "choice A" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("The study of money, currency, and capital assets") {
                        right = "choice B" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("The transfer of goods and services from one entity to another in exchange for money") {
                        right = "choice C" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    Button("Managing your money, such as saving and investing it") {
                        right = "choice D" }
                    .buttonStyle(BorderedProminentButtonStyle())
                    if(right == "choice A" || right == "choice B" || right == "choice C") {
                        Text("Sorry, wrong answer! Go back and check the websites again.")
                    } else if(right == "choice D") {
                        Text("Right, good job!")
                        NavigationLink(destination: BQ_Question_2()) {
                            Text("Next question") }
                    }
                }
            }
        }
    }
}
                struct BQ_Question_1_Previews: PreviewProvider {
                    static var previews: some View {
                        BQ_Question_1()
                    }
                }


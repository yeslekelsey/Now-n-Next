//
//  Planning for Future.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct Planning_For_Future: View {
    @State private var budget = ""
    @State private var food = ""
    @State private var bills = ""
    @State private var need = ""
    @State private var want = ""
    @State private var misc = ""
    var body: some View {
        ZStack {
            Color(red: 0.9686274509803922, green: 0.8509803921568627, blue: 0.6313725490196078)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Group {
                    HStack {
                        Image("logo")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Text("Budgeting")
                            .font(.title)
                            .fontWeight(.black)
                    } .padding()
                    Text("Learn how to budget and manage your personal finances! Check out any of the 3 articles! After that, you can put your skills to use by planning your own budget below!")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .padding()
                }
                Group {
                    Text("Resources")
                        .font(.title)
                    HStack {
                        Link("How to Budget",
                              destination: URL(string: "https://www.nerdwallet.com/article/finance/how-to-budget")!)
                        Link("Creating a Budget",
                              destination: URL(string: "https://bettermoneyhabits.bankofamerica.com/en/saving-budgeting/creating-a-budget")!)
                        Link("Personal Finance",
                              destination: URL(string: "https://www.investopedia.com/terms/p/personalfinance.asp")!)
                        NavigationLink(destination: BudgetQuiz()) {
                            
                    }
                }
                Group {
                    Text("Take a quiz!")
                }
                    
                }
                Text(".......................................................................")
                Group {
                    HStack {
                        Text("My Budget")
                        TextField("Enter amount here...", text: $budget)
                    }
                    HStack {
                        Text("Food")
                        TextField("Enter amount here...", text: $food)
                    }
                    HStack {
                        Text("Bills")
                        TextField("Enter amount here...", text: $bills)
                    }
                    HStack {
                        Text("Other needs")
                        TextField("Enter amount here...", text: $need)
                    }
                    HStack {
                        Text("Wants")
                        TextField("Enter amount here...", text: $want)
                    }
                    HStack {
                        Text("Miscellaneous")
                        TextField("Enter amount here...", text: $misc)
                    }
                } .padding()
                
            }
        }
    }
}

struct Planning_For_Future_Previews: PreviewProvider {
    static var previews: some View {
        Planning_For_Future()
    }
}

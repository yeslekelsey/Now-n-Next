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
            Color(hue: 0.475, saturation: 0.308, brightness: 0.91)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Contents")
                HStack {
                    Button("article 1") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("article 2") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                    Button("article 3") {
                        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    }
                }
                    NavigationLink(destination: BudgetQuiz()) {
                        Text("Take a quiz!")
                }
                Text(".......................................................................")
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
            }
        }
    }
}

struct Planning_For_Future_Previews: PreviewProvider {
    static var previews: some View {
        Planning_For_Future()
    }
}

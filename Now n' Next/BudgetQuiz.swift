//
//  Planning for Future.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct BudgetQuiz: View {
    @State private var right = "answer"
    @State private var right2 = "answer2"
    @State private var right3 = "answer3"
    var body: some View {
        ZStack {
            Color(hue: 0.475, saturation: 0.308, brightness: 0.91)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text("Budget Quiz!")
                Group {
                    Text("What’s personal finance?")
                    Button("a. Delivering value to meet the needs of a target market") {
                        right = "value"
                    }
                    Button("b. The study of money, currency, and capital assets") {
                        right = "assets"
                    }
                    Button("c. Managing your money, such as saving and investing it") {
                        right = "managing"
                    }
                    if(right == "assets" || right == "value") {
                        Text("🙅🏻‍♀️🙅🏻‍♀️🙅🏻‍♀️")
                    } else if(right == "managing") {
                        Text("✅✅✅")
                    }
                }
                Group {
                    Text("What’s the 50/30/20 rule?")
                    Button("50% wants, 30% needs, 20% savings/debt") {
                        right2 = "wants"
                    }
                    Button("b. 50% needs, 30% wants, 20% savings/debt") {
                        right2 = "needs"
                    }
                    Button("c. 50% savings/debt, 30% needs, 20% wants") {
                        right2 = "debt"
                    }
                    if(right2 == "needs") {
                        Text("✅✅✅")
                    } else if(right2 == "debt" || right2 == "wants") {
                        Text("🙅🏻‍♀️🙅🏻‍♀️🙅🏻‍♀️")
                    }
                }
                Group {
                    Text("What’s an example of a short-term financial goal?")
                    Button("a. Setting an emergency fund") {
                        right3 = "emergency"
                    }
                    Button("b. Saving for child’s tuition") {
                        right3 = "tuition"
                    }
                    Button("c. Saving for retirement") {
                        right3 = "retirement"
                    }
                    if(right3 == "emergency") {
                        Text("✅✅✅")
                    } else if(right3 == "tuition" || right3 == "retirement") {
                        Text("🙅🏻‍♀️🙅🏻‍♀️🙅🏻‍♀️")
                    }
                }
            }
            
        }
    }
    
    
    struct BudgetQuiz_Previews: PreviewProvider {
        static var previews: some View {
            BudgetQuiz()
        }
    }
    
}

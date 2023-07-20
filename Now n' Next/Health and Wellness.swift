//
//  Health and Wellness.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct Health_and_Wellness: View {
    var body: some View {
        NavigationStack {
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
                            Text("Health & Wellness")
                                .font(.largeTitle)
                                .fontWeight(.black)
                        } .padding()
                        Text("Insert caption here...")
                            .font(.headline)
                        Spacer()
                    }
                    Group {
                        Text("Quiz")
                            .font(.title)
                        Text("Test your knowledge with a quiz based on the resources provided!")
                            .font(.caption)
                            .multilineTextAlignment(.center)
                        NavigationLink(destination: HQ_Question_2()) {
                            Text("Link to Quiz")

                                
                        }
                        
                    }
                }
            }
        }
        
    }
}

struct Health_and_Wellness_Previews: PreviewProvider {
    static var previews: some View {
        Health_and_Wellness()
    }
}

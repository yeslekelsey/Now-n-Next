//
//  Home.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
        ZStack {
            Color(red: 0.9686274509803922, green: 0.7803921568627451, blue: 0.6980392156862745)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("title")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    HStack {
                        NavigationLink(destination: Health_and_Wellness()) {
                            Text("Health")
                                .foregroundColor(Color(red: 0.5294117647058824, green: 0.7137254901960784, blue: 0.6549019607843137))
                                .padding()
                                .font(.title)
                                .border(/*@START_MENU_TOKEN@*/Color(red: 0.03137254901960784, green: 0.2549019607843137, blue: 0.3607843137254902)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        }
                        NavigationLink(destination: Civil_Engagement()) {
                            Text("Advocacy")
                                .foregroundColor(Color(red: 0.5294117647058824, green: 0.7137254901960784, blue: 0.6549019607843137))
                                .padding()
                                .font(.title)
                                .border(/*@START_MENU_TOKEN@*/Color(red: 0.03137254901960784, green: 0.2549019607843137, blue: 0.3607843137254902)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                    }
                    }
                    .padding(7.0)
                    NavigationLink(destination: Planning_for_Future()) {
                        Text("Budgeting")
                            .foregroundColor(Color(red: 0.5294117647058824, green: 0.7137254901960784, blue: 0.6549019607843137))
                            .padding()
                            .font(.title)
                            .border(/*@START_MENU_TOKEN@*/Color(red: 0.03137254901960784, green: 0.2549019607843137, blue: 0.3607843137254902)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                            
                            
                            
                            
                            
                    }
                    Spacer()
                }
                
            }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

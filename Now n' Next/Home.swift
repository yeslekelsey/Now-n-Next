//
//  Home.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color(hue: 1.0, saturation: 0.133, brightness: 1.0)
                .edgesIgnoringSafeArea(.all)
            VStack {
                NavigationStack {
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

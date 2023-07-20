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
                Image("people")
                    .resizable(capInsets: EdgeInsets(top: 0.0, leading: 0.0, bottom: 0.0, trailing: 0.0))
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250, height: 50)
                Spacer()
                    NavigationLink(destination: Health_and_Wellness()) {
                        Text("Health")
                            .fontWeight(.black)
                            .foregroundColor(Color(hue: 0.43, saturation: 0.499, brightness: 0.616))
                                .padding()
                                .font(.largeTitle)
                                .border(/*@START_MENU_TOKEN@*/Color(red: 0.03137254901960784, green: 0.2549019607843137, blue: 0.3607843137254902)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.white, Color(hue: 1.0, saturation: 0.426, brightness: 1.0)]), startPoint: .top, endPoint: .bottom)
                                )
                    } .padding()
                        NavigationLink(destination: Civil_Engagement()) {
                            Text("Advocacy")
                                .fontWeight(.black)
                                .foregroundColor(Color(hue: 0.43, saturation: 0.499, brightness: 0.616))
                                .padding()
                                .font(.largeTitle)
                                .border(/*@START_MENU_TOKEN@*/Color(red: 0.03137254901960784, green: 0.2549019607843137, blue: 0.3607843137254902)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.white, Color(hue: 1.0, saturation: 0.426, brightness: 1.0)]), startPoint: .top, endPoint: .bottom)
                                )
                    }
                    .padding()
                NavigationLink(destination: Planning_For_Future()) {
                    Text("Budgeting")
                        .fontWeight(.black)
                        .foregroundColor(Color(hue: 0.43, saturation: 0.499, brightness: 0.616))
                        .padding()
                        .font(.largeTitle)
                        .border(/*@START_MENU_TOKEN@*/Color(red: 0.03137254901960784, green: 0.2549019607843137, blue: 0.3607843137254902)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        .background(
                            LinearGradient(gradient: Gradient(colors: [.white, Color(hue: 1.0, saturation: 0.426, brightness: 1.0)]), startPoint: .top, endPoint: .bottom)
                        )
                } .padding()
                    NavigationLink(destination: Journal()) {
                            Text("Journal")
                                .fontWeight(.black)
                                .foregroundColor(Color(hue: 0.43, saturation: 0.499, brightness: 0.616))
                                .padding()
                                .font(.largeTitle)
                                .border(/*@START_MENU_TOKEN@*/Color(red: 0.03137254901960784, green: 0.2549019607843137, blue: 0.3607843137254902)/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                                .background(
                                    LinearGradient(gradient: Gradient(colors: [.white, Color(hue: 1.0, saturation: 0.426, brightness: 1.0)]), startPoint: .top, endPoint: .bottom)
                                )
                                
                            
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

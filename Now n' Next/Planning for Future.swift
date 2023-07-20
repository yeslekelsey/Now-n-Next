//
//  Planning for Future.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct Planning_for_Future: View {
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
                        Text("Health & Wellness")
                            .font(.largeTitle)
                            .fontWeight(.black)
                    } .padding()
                    Text("Insert caption here...")
                        .font(.headline)
                    Spacer()
                }
            }
        }
    }
}

struct Planning_for_Future_Previews: PreviewProvider {
    static var previews: some View {
        Planning_for_Future()
    }
}

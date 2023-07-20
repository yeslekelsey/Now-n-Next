//
//  Journal.swift
//  Now n' Next
//
//  Created by Tina Lin on 7/20/23.
//

import Foundation
import SwiftUI

struct Journal: View {
    @State private var vent = ""
    @State private var fullText: String = "Start typing here..."

    var body: some View {
        ZStack {
            Color(hue: 0.374, saturation: 0.106, brightness: 0.902)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("📔My Journal📔")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.322, saturation: 0.422, brightness: 0.455))
                    .padding()
                
                Spacer()
                Text("Studies have shown that journaling can help improve mental health. This is a safe space to write down any of your thoughts/plans. Feel free to write whatever you wish!")
                    .foregroundColor(Color(hue: 0.322, saturation: 0.422, brightness: 0.455))
                    .padding()
                Spacer()
                TextEditor(text: $fullText)
                            .foregroundColor(Color.gray)
                            .font(.custom("HelveticaNeue", size: 13))
                            .lineSpacing(5)
                            .frame(height: 450)
                            .padding()
                            .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: 8)
                            .padding()
                Spacer()
                
                
            }
                
        }
    }
    private func row(alignment: VerticalAlignment, text: String) -> some View {
        HStack(alignment: alignment, spacing: 0) {
            Color.red.frame(height: 1)
            Text(text).font(.title).border(.gray)
            Color.red.frame(height: 1)
        }
    }
}

struct Journal_Previews: PreviewProvider {
    static var previews: some View {
        Journal()
    }
}



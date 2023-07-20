//
//  Civil Engagement.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/17/23.
//

import SwiftUI

struct Civil_Engagement: View {
    var body: some View {
        ZStack {
            VStack {
                Group {
                    HStack {
                        Image("logo")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Text("Advocacy")
                            .font(.largeTitle)
                            .fontWeight(.black)
                    } .padding()
                    Text("How to give back to your community")
                        .font(.headline)
                    Spacer()
                }
                Group {
                    Text("Climate Change")
                        .font(.title)
                    Link("Actions for a Healthy Planet",
                          destination: URL(string: "https://www.un.org/en/actnow/ten-actions")!)
                    Link("Causes and Effects of Climate Change",
                          destination: URL(string: "https://www.un.org/en/climatechange/science/causes-effects-climate-change#:~:text=Fossil%20fuels%20%E2%80%93%20coal%2C%20oil%20and,of%20all%20carbon%20dioxide%20emissions.")!)
                    Link("Global Warming vs. Climate Change",
                          destination: URL(string: "https://climate.nasa.gov/global-warming-vs-climate-change/#:~:text=Climate%20change%20is%20a%20long,are%20synonymous%20with%20the%20term.")!)
                    Spacer()
                }
                Group {
                    Text("Legislators")
                        .font(.title)
                    Text("To make your voice heard in climate related issues, you can contact local government officials to voice your concerns.")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                    Link("Find and Contact your Legislators",
                          destination: URL(string: "https://www.usa.gov/elected-officials")!)
                    Link("Tips for Communicating with Legislators",
                          destination: URL(string: "https://www.battlefields.org/preserve/speak-out/tips-communicating-legislators")!)
                    Spacer()
                }
                }
            }
        }
    }


struct Civil_Engagement_Previews: PreviewProvider {
    static var previews: some View {
        Civil_Engagement()
    }
}

//
//  Health and Wellness.swift
//  Now n' Next
//
//  Created by Kelsey McIntyre on 7/20/23.
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
                              Text("Globally, 1 out of 7 people aged 10-19 suffer from mental disorders. If you are struggling, don't be afraid to reach out.")
                                  .font(.headline)
                                  .multilineTextAlignment(.center)
                              
                          } .padding()
                          Group {
                              Image("prevention hotline")
                                  .resizable(resizingMode: .stretch)
                                  .aspectRatio(contentMode: .fit)
                              Link("SAMSHA's National Hotline",
                                    destination: URL(string: "https://www.samhsa.gov/find-help/national-helpline")!)
                              .padding(1)
                              Link("Tips on Managing Mental Health",
                                    destination: URL(string: "https://www.mentalhealth.org.uk/explore-mental-health/publications/our-best-mental-health-tips")!)
                              .padding(1)
                              Spacer()
                          }
                          Group {
                              Text("Quiz")
                                  .font(.title)
                              Text("Test your knowledge with a quiz based on the resources provided!")
                                  .font(.caption)
                                  .multilineTextAlignment(.center)
                              NavigationLink(destination: HQ_Question_1()) {
                                  Text("Link to Quiz")


                              }

                          } .padding()
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

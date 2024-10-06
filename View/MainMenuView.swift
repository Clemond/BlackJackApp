//
//  MainMenuView.swift
//  BlackJackApp
//
//  Created by Nicholas Nieminen Jönsson on 2024-10-06.
//

import SwiftUI


struct MainMenuView: View {
    var body: some View {
        //Background image
    ZStack {
            Image("background_blackjack")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            
            VStack {
                Image("blackjack_logo")
                    .resizable()
                    .frame(width: 250, height: 140)
                    .padding(.top, 10)
                    .shadow(radius: 20)

                Spacer()
                
                VStack {
                    Text("Main Menu").font(.largeTitle).padding(.bottom)
                    Button(action: {
                        print("pressed")
                    }, label: {
                        Text("Play").padding(.vertical, 2)
                            .padding()
                                .frame(width: 180, height: 50)
                                .background(Color.yellow)
                                .cornerRadius(10)
                    })
                    Button(action: {
                        print("pressed")
                    }, label: {
                        Text("Settings").padding(.vertical, 2)
                            .padding()
                                .frame(width: 180, height: 50)
                                .background(Color.yellow)
                                .cornerRadius(10)
                    })
                    Button(action: {
                        print("pressed")
                    }, label: {
                        Text("Tutorial").padding(.vertical, 2)
                            .padding()
                                .frame(width: 180, height: 50)
                                .background(Color.yellow) 
                                .cornerRadius(10)
                    })
                        
                }
                .font(.title)
                .foregroundStyle(Color.white)
                .padding(40)
                .background(VisualEffectBlur(style: .dark))
                .clipShape(.rect(cornerRadius: 30))
                .padding(.bottom, 100)

                Spacer()

            }
        }
        
    }
}

#Preview {
    MainMenuView()
}

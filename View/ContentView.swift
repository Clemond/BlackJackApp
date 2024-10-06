//
//  ContentView.swift
//  BlackJackApp
//
//  Created by Nicholas Nieminen Jönsson on 2024-10-04.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var myBlackJackViewModel = BlackJackViewModel()
    
    @State var currentCard: String
    var body: some View {
        ZStack {
            VStack {
                Text("Blackjack Game").bold().font(.title)
                Spacer()

                if(myBlackJackViewModel.blackJackGame.card == "0") {
                    Text("Start game by pressing button below").font(.title3)
                        .padding(.vertical,40)
                } else {
                    Image("card_\(myBlackJackViewModel.blackJackGame.card)")
                }
                Spacer()
                Button(action: {
                    print("Pressed")
                    myBlackJackViewModel.drawCard()
                }, label: {
                    Text("Draw Card")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .padding(40)
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 25.0).stroke(.white, lineWidth: 3)
                        })
                    
                }).padding(10)
                
            }.padding(.bottom,40)
        }
         // Ensure VStack takes the full size
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
}
    







#Preview {
    ContentView(currentCard: "")
}

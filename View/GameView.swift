//
//  GameView.swift
//  BlackJackApp
//
//  Created by Nicholas Nieminen Jönsson on 2024-10-06.
//

import SwiftUI

struct GameView: View {
    @StateObject var myBlackJackViewModel = BlackJackViewModel()
    
    @State var currentCard: String
    
    var body: some View {
        
        ZStack {
            Image("background_blackjack")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VisualEffectBlur(style: .dark)
                .opacity(0.5)
                .ignoresSafeArea()
            
            VStack {
                Text("Blackjack Game").bold().font(.title)
                Spacer()

                if(myBlackJackViewModel.blackJackGame.card == "0") {
                    Image("back_light")
                } else {
                    Image("card_\(myBlackJackViewModel.blackJackGame.card)")
                }
                Spacer()
                Button(action: {
                    myBlackJackViewModel.drawCard()
                    print("Card drawn: \(myBlackJackViewModel.blackJackGame.card)")
                }, label: {
                    Text("Draw Card")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .padding(40)
                        .overlay(content: {
                            RoundedRectangle(cornerRadius: 25.0).stroke(.white, lineWidth: 3)
                        })
                        .background(VisualEffectBlur(style: .dark))
                        .clipShape(.rect(cornerRadius: 25))

                    
                }).padding(10)
                
            }.padding(.bottom,40)

        }
       
    }
}

#Preview {
    GameView(currentCard: "0")
}

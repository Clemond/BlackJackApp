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
    @State private var animateImage = false // Control the animation
    @State private var isFlipped = false // State for flipping the card

    
    let playerCardYPosition = UIScreen.main.bounds.height / 3 - 100
    let playerCardXPosition: CGFloat = 0

    
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
                        HStack {
            
                        Image("back_light")
                            .resizable()
                            .frame(width: 150, height: 200)
                        
                        Image("back_light")
                            .resizable()
                            .frame(width: 150, height: 200)
                        
                        }
                        .offset(y: animateImage ? 0 : -UIScreen.main.bounds.height) // Animate from top to center

                         .animation(.easeInOut(duration: 1.5), value: animateImage) // Define the animation duration and curve
                        
                        HStack {
            
                        Image("back_light")
                            .resizable()
                            .frame(width: 150, height: 200)
                        
                        Image("back_light")
                            .resizable()
                            .frame(width: 150, height: 200)
                            .rotation3DEffect(
                                .degrees(isFlipped ? 180 : 0),
                                                        axis: (x: 0, y: 1, z: 0)
                                                    )
                                                    .animation(.easeInOut(duration: 0.6), value: isFlipped)
                        
                        }
                        
                           .offset(y: animateImage ? 0 : UIScreen.main.bounds.height) // Animate from top to center

                            .animation(.easeInOut(duration: 1.5), value: animateImage) // Define the animation duration and curve
                        
                        
                    } else {
                        Image("card_\(myBlackJackViewModel.blackJackGame.card)")
                            .resizable()
                            .frame(width: 150, height: 200) // Adjust card size

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

                        
                    })
                    
                }
                .padding(.bottom,40)
                .background(Color.gray.opacity(0.5)) //backgroundcolor for debugging
               
                

        }
        .onAppear {
                    // Trigger animation when the view appears
                    animateImage = true
                }
       
    }
}

#Preview {
    GameView(currentCard: "0")
}

//
//  ContentView.swift
//  BlackJackApp
//
//  Created by Nicholas Nieminen Jönsson on 2024-10-04.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack {
                if(myGameViewModel.diceGame.diceOne == 0 && myGameViewModel.diceGame.diceTwo == 0){
                    Text("Start game by pressing button below").font(.title3)
                        .padding(.vertical,40)
                }else {
                    Image("dice-\(myGameViewModel.diceGame.diceOne)")
                    Image("dice-\(myGameViewModel.diceGame.diceTwo)")
                }
                
            }.padding(.bottom,40)
        }
         // Ensure VStack takes the full size
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green)
    }
}







#Preview {
    ContentView()
}

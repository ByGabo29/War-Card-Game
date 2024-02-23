//
//  ContentView.swift
//  War Card Game
//
//  Created by 64023073 on 2/9/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card3"
    @State var CPUCard = "card2"
    @State var PlayerScore = 0
    @State var CPUScore = 0


    var body: some View {
        
        ZStack(){
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack {
                //top logo
                Spacer()
                
                Image("logo")
                
                Spacer()
                //cards
                HStack {
                    
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(CPUCard)
                    Spacer()
                    
                }
                //Deal Button
                Spacer()
                
                Button() {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack() {
                        
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text( String(PlayerScore) )
                            .font(.largeTitle)
                        
                        
                    }
                    //Score
                    Spacer()
                    VStack() {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text( String(CPUScore) )
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
    
    func deal(){
        
        //randomize Player card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        
        //randomize Cpu card
        var CPUCardValue = Int.random(in: 2...14)
        CPUCard = "card" + String(CPUCardValue)
        
        
        //update score
        
        //Player Point
        if (playerCardValue > CPUCardValue) {
            PlayerScore += 1
            print("Log: Player Score!")
        }
        
        //CPU Point
        else if(playerCardValue < CPUCardValue){
            CPUScore += 1
            print("Log: CPU Score!")
        }
        
        //Tie
        else {
            PlayerScore += 1
            CPUCardValue += 1
            print("Log: Tie")
        }
        
        print("Log: Success")
    }
}

#Preview {
    ContentView()
}

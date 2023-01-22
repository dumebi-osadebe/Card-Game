//
//  ContentView.swift
//  CardGame
//
//  Created by Dumebi Osadebe on 2023-01-17.
//

import SwiftUI
// : - specifies some view protocol to conform to and View is the protocol it has to follow
// witht the View protocol we have to have a body that returns some View
// i.e it can have any datatype that conforms to the view property
struct ContentView: View {
    
    @State private var playerCard = "card2"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    
    var body: some View {
        ZStack{
            
            Image("background")
            
            VStack{
                
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    // generate random number between 2 and 14
                    let playerRand =    Int.random(in: 2...14)
                    let cpuRand =    Int.random(in: 2...14)
                    
                    // update players cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    // update player scores based on random number generated
                    if playerRand > cpuRand {
                        playerScore += 1
                    } else if cpuRand > playerRand {
                            cpuScore += 1
                    }
   
                    
                }, label: {
                    Image("dealbutton")
                    }
                )
                
                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5.0)
                        
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    
                }
                Spacer()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

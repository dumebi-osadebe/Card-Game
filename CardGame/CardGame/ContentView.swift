//
//  ContentView.swift
//  CardGame
//
//  Created by Dumebi Osadebe on 2023-01-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            
            Image("background")
            
            VStack{
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    Image("card2")
                    
                    Spacer()
                    Image("card3")
                    Spacer()
                    
                }
                
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack{
                    
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5.0)
                        
                        
                        
                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 5.0)
                        
                        
                        
                        Text("0")
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

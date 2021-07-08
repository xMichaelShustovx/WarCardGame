//
//  ContentView.swift
//  War-Challenge
//
//  Created by Michael Shustov on 10.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card3"
    @State private var cpuCard = "card4"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            
            Image("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                Spacer()
                
                Image("logo").scaleEffect(1.5)
                
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
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand{
                        playerScore += 1
                    }
                    else if playerRand == cpuRand{
                        
                    }
                    else {
                        cpuScore += 1
                    }
 
                }, label: {
                    Image("dealbutton")
                })
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10.0)
                            .font(.title)
                            .foregroundColor(.white)
                        Text(String(playerScore))
                            .foregroundColor(.white)
                            .font(.title)
                            
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10.0)
                            .font(.title)
                            .foregroundColor(.white)
                        Text(String(cpuScore))
                            .foregroundColor(.white)
                            .font(.title)
                            
                    }
                    Spacer()
                }
                
                Spacer()
                
            }
        }
    }
}

struct ContentView1: View {
    
    @State private var Score = 0
    
    @State private var isIncreasing = true
    
    func Increase () {
        Score += Int.random(in: 1...10)
    }
    
    func Decrease () {
        Score -= Int.random(in: 1...10)
    }
    
    var body: some View {

            VStack{
                
                Spacer()
                
                Text(String(Score))
                    .font(.title)
                    .padding()
                    .background(Color.black)
                    .opacity(0.85)
                    .cornerRadius(10)
                    .foregroundColor(.white)
                
                Spacer()

                    Button("Push") {
                        
                        if Score > 50{
                            isIncreasing = false
                        }
                        else if Score < 0 {
                            isIncreasing = true
                        }
                        
                        if isIncreasing {
                            Increase()
                        }
                        else {
                            Decrease()
                        }
                        
                    }
                    .padding()
                    .cornerRadius(10)
                    .foregroundColor(.black)
                    .background(Color.green)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
            
        }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}

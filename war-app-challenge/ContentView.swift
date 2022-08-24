//
//  ContentView.swift
//  war-app-challenge
//
//  Created by Prasi Aravind on 8/20/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack {
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
                //Image("dealbutton")
                Button(action: {
                    let cardPref = "card"
                    //The contentview cannot be changed like that, must use property wrapper. Do this with "@State"
//                    playerCard = "card11"
//                    cpuCard = "card12"
//
//                    playerScore += 1
//                    cpuScore += 1
//                    var genRandom = Int.random(in: 2...14)
                        let PlayerCardNumber = Int.random(in: 2...14)
                        let CpuCardNumber = Int.random(in: 2...14)
                        var addFactor = 2
                        
                        playerCard=cardPref+String(PlayerCardNumber)
                        cpuCard=cardPref+String(CpuCardNumber)
                        
                        if (PlayerCardNumber > CpuCardNumber){
                            playerScore += addFactor
                            addFactor = 2
                        }
                        else if (PlayerCardNumber == CpuCardNumber){
                            addFactor += 2
                        }
                        else{
                            cpuScore += addFactor
                            addFactor = 2
                        }
}) {
                    Image("dealbutton")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                        
                    }
                    Spacer()
                }
                Spacer()
                
            }
//            func myFunct(a:Int) -> Int{ //If you arent' returning anything the return keyword is actually Void
            //Can say a:Int = 0 for a default value
//                let b = a+20
//                return b
//            }
//            let mySum = myFunct(a:5)
//            print(mySum)
//Using underscores as function calls can prevent you from having to add any text when you call your function

        }//.ignoresSafeArea() //gets Color.here to stretch all the way up and down the screen
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

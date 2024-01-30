//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Mariola Hullings on 1/29/24.
//

import SwiftUI

struct ContentView: View {
    //@State - makes the property mutable - allow us to update the variables
    //In swift Structures are immutable
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("diceeLogo")
                    .padding(.top)
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                    
                }) {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.yellow)
                        .blendMode(.screen)
                        .frame(width: 130, height: 130)
                        .overlay(
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
                        )
                }
                .padding(.bottom)

            }
        }
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .frame(width: 145, height: 145)
            .padding()
        
    }
}

#Preview {
    ContentView()
}

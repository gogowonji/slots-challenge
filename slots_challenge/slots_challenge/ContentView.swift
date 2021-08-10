//
//  ContentView.swift
//  slots_challenge
//
//  Created by 지원 on 2021/08/10.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 2000
    @State var slot1 = 1
    @State var slot2 = 1
    @State var slot3 = 1
    
    var body: some View {
        VStack {
            Text("SwiftUI Slots!")
                .font(.title)
                .padding()
            
            Spacer()
            
            HStack {
                Text("Credit: \(score)")
                
            }
            
            Spacer()
            
            HStack{
                Image(String(slot1)).resizable().aspectRatio(contentMode: .fit)
                Image(String(slot2)).resizable().aspectRatio(contentMode: .fit)
                Image(String(slot3)).resizable().aspectRatio(contentMode: .fit)
            }
            
            
            Spacer()
            
            Button(action: {
                    spin()
                    credit()
                
            },label:{
                Text("Spin")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
            })
            .frame(width: 120.0, height: 40.0)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.pink/*@END_MENU_TOKEN@*/)
            .cornerRadius(/*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            
            
            Spacer()
            
        }
    }
    
    func spin() {
        slot1 = Int.random(in: 1...3)
        slot2 = Int.random(in: 1...3)
        slot3 = Int.random(in: 1...3)
        
    }
    func credit(){
        if(slot1 == slot2 && slot2 == slot3){
            score += 1000
        }else{
            score -= 10
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

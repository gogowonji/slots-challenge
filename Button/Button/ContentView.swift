//
//  ContentView.swift
//  Button
//
//  Created by 지원 on 2021/08/05.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    @State var temp : Bool = true
    //temp를 만든 건 ㄱㅊ
    
    func increase(){
        let rand = Int.random(in: 1...10)
        score += rand
    }
    func decrease() {
        let rand = Int.random(in: 1...10)
        score -= rand
    }
    
    var body: some View {
        
        
        //command key + click!
        VStack {
            
            //Button instance with closure
            
            //first parameter : label of the button
            //second parameter : function (closure)
//            A closure is simply a block of code statements enclosed in a set of curly brackets. It's like a function without a name. Closures can be passed into method calls as parameters.


//            Button("Click me", action: {
//                print("Hello world")
//            })
//
//            //Button instance with trailing closure
//            Button("Click me"){
//                print("Hello world")
//            }
//
//            //Button instance with label view
//            Button(action: {
//                print("Hello world")
//            }, label: {
//                HStack{
//                    Image(systemName: "play.fill")
//                    Text("edit")
//                }
//            })
            
            
            // 50을 기준으로 50 찍고 계속 감소
            // 0 찍고 계속 증가
            
            Button("Button"){
                
                if(score < 0){                  temp = true
                }else if(score > 50){           temp = false
                }
                
//                if(temp){
//                    increase()
//                }else {
//                    decrease()
//                }
                temp ? increase() : decrease()
                
                
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Text(String(score))
            

        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

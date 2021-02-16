//
//  ContentView.swift
//  MyJanken
//
//  Created by Tetsuro Watanabe on 2021/02/15.
//

import SwiftUI

struct ContentView: View {
    @State var answerNumber = 0
  var body: some View {
        
      VStack {
        
        Spacer()
        
        if answerNumber == 0 {
            Text("これからじゃんけんをします")
                .padding(.bottom)
        } else if answerNumber == 1 {
            // グーの画像指定
            Image("gu")
                // リサイズを指定
                .resizable()
                //画面に収まるようにアスペクト比を維持す定
                .aspectRatio(contentMode: .fit)
            
        Spacer()
            //じゃんけんの種類を指定
            Text("グー")
                .padding(.bottom)
            
        } else if answerNumber == 2 {
            Image("choki")
                .resizable()
                .aspectRatio(contentMode: .fit)
        
        Spacer()
            
            Text("チョキ")
                .padding(.bottom)
        } else {
            Image("pa")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        Spacer()
            Text("パー")
                .padding(.bottom)
            
        }
            // じゃんけんをするボタン！！
            Button(action: {
                var newAnswerNumber = 0
                
                repeat {
                    newAnswerNumber = Int.random(in:1...3)
                
                } while answerNumber == newAnswerNumber
                
                answerNumber = newAnswerNumber
                
            }) {
                // ボタンに表示する文字を指定
                Text("じゃんけんをする")
                    .frame(maxWidth: .infinity)
                    .frame(height: 100)
                    .font(.title)
                    .background(Color.pink)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

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
        if answerNumber == 0 {
            Text("これからじゃんけんをします")
        } else if answerNumber == 1 {
            // グーの画像指定
            Image("gu")
                // リサイズを指定
                .resizable()
                //画面に収まるようにアスペクト比を維持す定
                .aspectRatio(contentMode: .fit)
            //じゃんけんの種類を指定
            Text("グー")
            
        } else if answerNumber == 2 {
            Image("choki")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("チョキ")
            
        } else {
            Image("pa")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("パー")
            
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
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

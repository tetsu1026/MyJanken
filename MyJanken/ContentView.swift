//
//  ContentView.swift
//  MyJanken
//
//  Created by Tetsuro Watanabe on 2021/02/15.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
        
      VStack {
            // グーの画像指定
            Image("gu")
                // リサイズを指定
                .resizable()
                //画面に収まるようにアスペクト比を維持す定
                .aspectRatio(contentMode: .fit)
            //じゃんけんの種類を指定
            Text("グー")
            // じゃんけんをするボタン！！
            Button(action: {
                // buttonがタップされた時の動き
                print("タップされたよ!!")
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

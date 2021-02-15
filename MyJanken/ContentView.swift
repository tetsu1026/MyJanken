//
//  ContentView.swift
//  MyJanken
//
//  Created by Tetsuro Watanabe on 2021/02/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // グーの画像指定
        Image("gu")
            // リサイズを指定
            .resizable()
            // 画面に収まるようにアスペクト比を維持する指定
            .aspectRatio(contentMode: .fit)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

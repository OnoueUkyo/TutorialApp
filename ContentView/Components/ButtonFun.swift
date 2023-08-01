//
//  SearchFun.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/28.
//

import SwiftUI

struct ButtonFun: View {
    //buttonText　＝　フォロー、フォロワー、確認、削除,プロフィールを編集,プロフィールをシェア
    @State var buttonText = "フォロー"
    @State var bool = false
    @State var buttonBool = false
    @State var buttonWidth :CGFloat = 70
    @State var buttonHeight :CGFloat = 35
    var body: some View {
        Button(
            action: {
                if buttonText == "フォロー" || buttonText == "フォロー中"{
                    bool.toggle()
                    buttonText=bool ? "フォロー中" : "フォロー"
                }
                   
            }, label: {
                Text(buttonText).font(.system(size: 10))
                    .bold()
                    .frame(
                        width: buttonWidth,
                        height: buttonHeight
                    )
                    .foregroundColor(
                        bool ? .black : .white
                    )
                    .background(
                        bool ? .gray .opacity(0.2): .blue
                    )
                    .cornerRadius(10)
            })
    }
}

//struct SearchFun_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchFun()
//    }
//}

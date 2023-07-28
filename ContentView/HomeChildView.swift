//
//  FirstChildView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/27.
//

import SwiftUI

struct HomeChildView: View {
    @State var inputText=""
    @State var like = false
    var body: some View {
        VStack(spacing: 0) {
            ForEach(0..<2){index in
                    ZStack{
                    Image("kyu")
                        .resizable()
                        .scaledToFill()
                        .frame(alignment:.center
                        )
                        .background(.gray)
                    VStack{
                        HStack {
                            Image("kyu")
                                .resizable()
                                .clipShape(Circle())
                                .overlay(
                                    Circle().stroke(Color.clear))
                                .frame(
                                    width: 50, height: 50,
                                    alignment: .leading
                                )
                            Text("九州デジタルソリューションズ")
                                .fontWeight(.light)
                                .font(.caption)
                            Spacer()
                            Image(systemName: "")
                        }
                        .padding(.horizontal, 5)
                        Spacer()
                        
                    }.padding(.top,2)
                }
                HStack{
                    Image(systemName: like ? "heart.fill" : "heart")
                        .onTapGesture {
                            like.toggle()
                        }
                        .foregroundColor(
                            like ? .red : .black
                        )
                    Image(systemName: "message")
                    Image(systemName: "drop.triangle")
                    Spacer()
                }.font(.system(size:20))
                    .padding(.leading,8)
                HStack{
                    TextField(
                        "コメントを入力",
                        text: $inputText
                    )
                }.frame(height:70)
                
                HStack{
                    
                    Text("")
                }
                
            }.padding(.top,15)
        }
    }
}

struct FirstChildView_Previews: PreviewProvider {
    static var previews: some View {
        HomeChildView()
    }
}

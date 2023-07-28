//
//  ThirdView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/26.
//

import SwiftUI

struct NoticeView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    NavigationLink(destination:FollowRequestView()){
                        HStack{
                            Circle()
                                .frame(height:40)
                                .foregroundColor(.white)
                                .overlay(
                                    Circle().stroke())
                            VStack{
                                Text("フォローリクエスト")
                                    .frame(
                                        maxWidth:.infinity,
                                        alignment: .leading
                                    )
                                Text("KDS")
                                    .foregroundColor(.gray)
                                    .frame(
                                        maxWidth:.infinity,
                                        alignment: .leading
                                    )
                                    .padding(.leading,3)
                                
                            }
                            
                            Image(systemName: "chevron.right")
                                .padding(.trailing,10)
                                
                        }.foregroundColor(.primary)
                        Spacer()
                    }
                    .frame(height:50)
                    .padding(EdgeInsets(
                        top: 10,
                        leading: 15,
                        bottom: 0,
                        trailing: 0
                    ))
                    //.background(.red)
                    Divider()
                    HStack{
                        VStack{
                            Text("今日")
                                .padding(EdgeInsets(
                                    top: 15,
                                    leading: 0,
                                    bottom: 20,
                                    trailing: 0
                                ))
                            Circle()
                                .frame(height:40)
                                .foregroundColor(.white)
                                .overlay(
                                    Circle().stroke())
                        }
                        VStack{
                            Text("Onoueがあなたをフォロ")
                                .frame(
                                    maxWidth:.infinity,
                                    alignment: .leading
                                )
                            Text("ーしました。")
                                .frame(
                                    maxWidth:.infinity,
                                    alignment: .leading
                                )
                                .padding(.leading,3)
                            
                            
                        }.padding(.top,60)
                        ButtonFun()
                            .padding(.trailing,15)
                        Spacer()
                    }.frame(height:70)
                        .padding(.leading,15)
                    Divider().padding(.top,20)
                    //.background(.red)
                    Spacer()
                }
            }
            .toolbar{
                ToolbarItem(placement:.navigationBarLeading) {
                    Button(
                        action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                            Text("お知らせ")
                        }
                    ).foregroundColor(.primary)
                        .font(.title3)
                }
            }
            
        }.navigationBarBackButtonHidden()
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        NoticeView()
    }
}

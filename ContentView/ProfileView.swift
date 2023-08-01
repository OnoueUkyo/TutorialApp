//
//  ProfileView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/28.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectTab: Int = 0
    var list  = [
        Image(systemName: "squareshape.split.3x3"),
        Image(systemName: "play.tv.fill"),
        Image(systemName: "person.crop.rectangle")
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        Image("kyu")
                            .resizable()
                            .scaledToFill()
                            .cornerRadius(75)
                            .frame(width:130 ,height:50)
                            .padding(.horizontal,7)
                        Spacer()
                        
                        HStack{
                            VStack{
                                Text("0")
                                Text("投稿")
                            }
                            .padding()
                            VStack{
                                Text("100")
                                Text("フォロワー")
                            }
                            VStack{
                                Text("100")
                                Text("フォロー中")
                            }
                        }.padding(.trailing,32)
                            .font(.footnote)
                    }.padding(.top,50)
                    HStack{
                        ButtonFun(buttonText:"プロフィールを編集",
                                  bool: true,
                                  buttonWidth: 142,
                                  buttonHeight:35
                        )
                        ButtonFun(buttonText:"プロフィールをシェア",
                                  bool: true,
                                  buttonWidth: 142,
                                  buttonHeight:35
                        )
                        ButtonFun(buttonText:"🙍",
                                  bool: true,
                                  buttonWidth: 35,
                                  buttonHeight:35
                        )
                    }
                    .padding(.top,60)
                    // Divider().padding(.top,20)
                    
                    VStack(spacing: 0) {
                        ProfileTab(
                            list: list,
                            selectTab: $selectTab
                        )
                        Divider()
                        TabView(selection: $selectTab,
                                content: {
                            VStack{
                                Image(systemName: "camera.circle")
                                    .font(.system(size:100))
                                    .padding(.bottom,15)
                                Text("投稿がありません。")
                                    .font(.title2)
                            }.tag(0)
                            VStack{
                                Image(systemName: "play.tv.fill")
                                    .font(.system(size:100))
                                    .padding(.bottom,15)
                                Text("下書きがありません。")
                                    .font(.title2)
                            }.tag(1)
                            VStack{
                                Image(systemName: "person.crop.rectangle")
                                    .font(.system(size:100))
                                    .padding(.bottom,15)
                                Text("あなたが写っている写真と動画")
                                    .font(.title2)
                                Text("写真と動画でタグ付けされると、ここに表示されます。")
                                    .font(.footnote)
                                    .padding(.top,5)
                                    .foregroundColor(.gray)
                                    
                            }.tag(2)
                        })
                        .tabViewStyle(
                            PageTabViewStyle(indexDisplayMode:.always)
                        )
                    }
                    .frame(height: 430)
                    .padding(.top,20)
                }
            }.navigationBarItems(
                leading:HStack{
                    Text("KDS")
                        .foregroundColor(.black)
                        .font(.custom(
                            "ArialRoundedMTBold",
                            size: 30
                        ))
                    Image(systemName: "chevron.down")
                }.padding(.leading,10),
                trailing : HStack{
                    NavigationLink(destination:NoticeView()){
                        Image(systemName:"plus.app")
                            .foregroundColor(.primary)
                            .font(.system(size:20))
                            .padding(.trailing,15)
                    }
                    Image(systemName:"list.bullet")
                        .font(.system(size:20))
                }
            )
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

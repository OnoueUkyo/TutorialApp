//
//  ProfileView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/28.
//

import SwiftUI

struct ProfileView: View {
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
                            .padding(.top,120)
                        HStack{
                            
                            Text("投稿")
                            
                            Text("フォロワー")
                            
                            Text("フォロー")
                            Spacer()
                            
                        }.padding(.trailing,32)
                    }
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

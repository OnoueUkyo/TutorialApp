//
//  FollowRequestView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/28.
//

import SwiftUI

struct FollowRequestView: View {
    @Environment(\.dismiss) private var dismiss
    @State var searchText:String=""
    @State var accountList=[
        "Onoue",
        "Ukyo",
        "murakami",
        "rennjyu",
        "KDS"
    ]
    
    private var ac: [String]{
        let searchResult = accountList.filter {
            $0.localizedStandardContains(searchText)
            
        }
        return searchText.isEmpty ? accountList : searchResult
    }
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    ForEach(0..<ac.count,id:\.self){ index in
                        NavigationLink(destination:NoticeView()){
                            HStack{
                                if ac[index]=="KDS"{
                                    Image("kyu")
                                        .resizable()
                                        .clipShape(Circle())
                                        .overlay(
                                            Circle().stroke(Color.clear))
                                        .frame(
                                            width: 50, height: 50,
                                            alignment: .leading
                                        )
                                }else{
                                    Circle()
                                        .frame(height:40)
                                        .foregroundColor(.white)
                                        .overlay(
                                            Circle().stroke())
                                }
                                Text(ac[index])
                                Spacer()
                                ButtonFun(buttonText:"確認")
                                    .padding(EdgeInsets(
                                        top: 0,
                                        leading: 0,
                                        bottom: 60,
                                        trailing: 0
                                        ))

                                    
                                        
                                            
                                    
                                ButtonFun(buttonText:"削除",bool: true)
                                    .padding(EdgeInsets(
                                        top: 0,
                                        leading: 0,
                                        bottom: 60,
                                        trailing: 20
                                        ))
                                    
                                
                            }.foregroundColor(.primary)
                                .padding(.leading,20)
                                .frame(height:50)
                               // .background(.red)
                            Spacer()
                        }
                        
                    }
                    Spacer()
                }
            }.toolbar{
                
                ToolbarItem(placement:.navigationBarLeading) {
                    Button(
                        action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                        }
                    ).foregroundColor(.primary)
                        .font(.title3)
                }
            }.searchable(text: $searchText)
            .navigationBarTitle(
                "フォローリクエスト",
                displayMode: .inline
            )
        }.navigationBarBackButtonHidden()
        
        
    }
}

struct FollowRequestView_Previews: PreviewProvider {
    static var previews: some View {
        FollowRequestView()
    }
}

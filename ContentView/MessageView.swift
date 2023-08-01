//
//  MessageView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/31.
//

import SwiftUI

struct MessageView: View {
    @Environment(\.dismiss) private var dismiss
    @State var searchText:String=""
    let accountList=[
        "Onoue",
        "Ukyo",
        "murakami",
        "rennjyu",
        "saeki",
        "masaya",
        "nakamura",
        "sinnitirou",
        "KDS"
    ]
    
    private var ac: [String]{
        let searchResult = accountList.filter { $0.localizedStandardContains(searchText) }
        return searchText.isEmpty ? accountList : searchResult
    }
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    HStack{
                        Text("メッセージ")
                        Spacer()
                        Text("リクエスト")
                    }.padding(EdgeInsets(
                        top: 5,
                        leading: 20,
                        bottom: 10,
                        trailing: 15
                    ))
                    ForEach(
                        0..<ac.count,
                        id:\.self
                    ){ index in
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
                                VStack{
                                    Text(ac[index])
                                        .frame(
                                            maxWidth:.infinity,
                                            alignment: .leading
                                        )
                                    Text("新着メッセージ2件")
                                        .frame(
                                            maxWidth:.infinity,
                                            alignment: .leading
                                        )
                                }
                                Spacer()
                                HStack{
                                    Text("・")
                                        .foregroundColor(.blue)
                                        .font(.system(size:50))
                                        .frame(width:20)
                                    Image(systemName: "camera")
                                        .font(.system(size:20))
                                        .padding(.trailing,15)
                                }
                                
                            }.foregroundColor(.primary)
                            
                                .padding(.leading,20)
                                .frame(height:50)
                            
                        }
                        
                    }
                }
            }.toolbar{
                ToolbarItem(placement:.navigationBarLeading) {
                    Button(
                        action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                            Text("KDS")
                                .font(.custom(
                                    "Arial-BoldMT",
                                    size: 30
                                ))
                        }
                    ).foregroundColor(.primary)
                }
            }
            .searchable(text: $searchText)
            
        }.navigationBarBackButtonHidden()
    }
}

struct PMessageView_Previews: PreviewProvider {
    static var previews: some View {
        MessageView()
    }
}

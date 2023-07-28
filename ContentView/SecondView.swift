//
//  SecondView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/26.
//

import SwiftUI

struct SecondView: View {
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
            ScrollView(showsIndicators: false){
                VStack{
                    HStack{
                        Text("最近")
                            .padding(.leading,20)
                        Spacer()
                    }
                    ForEach(0..<ac.count,id:\.self){ index in
                        NavigationLink(destination:ThirdView()){
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
                            }.foregroundColor(.primary)
                            
                                .padding(.leading,20)
                                .frame(height:50)
                            
                        }
                        
                    }
                    Spacer()
                }
            }.searchable(text: $searchText)
        }
    }
    
    
    
    
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

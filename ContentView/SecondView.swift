//
//  SecondView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/26.
//

import SwiftUI

struct SecondView: View {
    @State var searchText:String=""
    let acount=[
        "Onoue",
        "Ukyo",
        "murakami",
        "rennjyu",
        "saeki",
        "masaya",
        "nakamura",
        "sinnitirou"
    ]
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
                                Circle()
                                    .frame(height:40)
                                    .foregroundColor(.white)
                                    .overlay(
                                        Circle().stroke())
                                Text(ac[index])
                                Spacer()
                            }.foregroundColor(.primary)
                            
                                .padding(.leading,20)
                                .frame(height:50)
                            
                        }
                        
                    }.searchable( text: $searchText)
                    Spacer()
                }
//                .searchable(text:$searchText)
            }
            
        }
    }
    
    
    private var ac: [String]{
        let searchResult = acount.filter { $0.localizedStandardContains(searchText) }
        return searchText.isEmpty ? acount : searchResult
    }
    
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

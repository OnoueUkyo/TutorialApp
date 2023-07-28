//
//  FirstView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/26.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.dismiss) private var dismiss
    @State var bool = true
    
    @State var nowDate = Date()
    @State var dateText = ""
    private let dateFormatter = DateFormatter()
    var body: some View {
        
        NavigationView{
            ScrollView(showsIndicators: false){
                VStack {
                    ScrollView(
                        .horizontal,
                        showsIndicators:false
                    ){
                        HStack{
                            ForEach(0..<8){num in
                                Image("kyu")
                                    .resizable()
                                    .scaledToFill()
                                    .cornerRadius(75)
                                    .onTapGesture {
                                        bool.toggle()
                                    }
                                    .frame(height:100)
                                    .overlay{
                                        Circle()
                                            .stroke(
                                                bool ? LinearGradient(
                                                    gradient: Gradient(
                                                        colors: [
                                                            .yellow,
                                                            .red,.purple
                                                        ]
                                                    ),
                                                    startPoint:.bottomLeading,
                                                    endPoint: .topTrailing
                                                ) : LinearGradient(
                                                    gradient: Gradient(
                                                        colors: [.gray,.gray]
                                                    ),
                                                    startPoint: .bottomLeading,
                                                    endPoint: .topTrailing
                                                ),
                                                lineWidth:4
                                            )
                                    }.frame(height:105)
                                    .padding(.horizontal,7)
                            }
                            Spacer()
                        }.padding(.top,20)
                    }
                    HomeChildView()
                }
                .navigationBarItems(
                    leading:Text("Instaglam")
                        .foregroundColor(.black)
                        .font(.custom(
                            "HoeflerText-Italic",
                            size: 35
                        )),
                    trailing : HStack{
                        NavigationLink(destination:NoticeView()){
                            Image(systemName:"heart")
                                .foregroundColor(.primary)
                        }
                        Image(systemName:"bolt.horizontal.circle")
                            .font(.system(size:20))
                    }
                )
                
            }
            
        }
        
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

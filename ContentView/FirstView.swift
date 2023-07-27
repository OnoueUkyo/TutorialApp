//
//  FirstView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/26.
//

import SwiftUI

struct FirstView: View {
    @Environment(\.dismiss) private var dismiss
    @State var bool = true
    @State var inputText=""
    @State var like = false
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
                                                        colors: [.yellow,.red,.purple]
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
                                TextField("コメントを入力",text: $inputText)
                            }.frame(height:70)
                            
                            HStack{
                                
                                Text("")
                            }
                            
                        }.padding(.top,15)
                    }
                }
                .navigationBarItems(
                    leading:Text("Instaglam")
                        .foregroundColor(.black)
                        .font(.custom("HoeflerText-Italic", size: 35)),
                    trailing : HStack{
                        Image(systemName:"heart")
                        Image(systemName:"bolt.horizontal.circle")
                            .font(.system(size:20))
                    }
                )
                
            }
            
        }
        
    }
    private var change :Bool{
        return false
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

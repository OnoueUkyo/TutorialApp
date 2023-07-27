//
//  FirstView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/26.
//

import SwiftUI

struct FirstView: View {
    @State var bool = true
    @Environment(\.dismiss) private var dismiss
    var body: some View {
        NavigationView{
            ScrollView(showsIndicators: false){
                VStack {
                    ScrollView(.horizontal,showsIndicators:false){
                        HStack{
                            ForEach(0..<8){num in
                                Circle()
                                    .onTapGesture {
                                        bool.toggle()
                                    }
                                    .frame(height:100)
                                    .foregroundColor(.white)
                                    .overlay{
                                        Circle()
                                            .stroke(bool ? LinearGradient(gradient: Gradient(colors: [.yellow, .red, .purple]), startPoint: .bottomLeading, endPoint: .topTrailing) : LinearGradient(gradient: Gradient(colors: [.gray, .gray]), startPoint: .bottomLeading, endPoint: .topTrailing),lineWidth:3)
                                    }.frame(height:105)
                                    .padding(.horizontal,7)
                            }
                            Spacer()
                        }.padding(.top,20)
                    }
                    HStack{
                        
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
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}

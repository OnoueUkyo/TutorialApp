//
//  Profile1Tab.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/07/31.
//

import SwiftUI

struct ProfileTab: View {
    let list: [Image]
    @Binding var selectTab: Int
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0 ..< list.count,
                    id: \.self) { row in
                Button(action: {
                    withAnimation (
                        .linear(duration:0.3
                               )) {
                        selectTab = row
                    }
                }, label: {
                    VStack(spacing: 0) {
                        HStack {
                            Text(list[row])
                                .font(Font.system(
                                    size: 18,
                                    weight: .semibold
                                ))
                                .foregroundColor(Color.primary)
                        }
                        .frame(
                            width: 130,
                            height: 45
                        )
                        Rectangle()
                            .fill(selectTab == row ? Color.black : Color.clear)
                            .frame(height: 3)
                    }
                })
            }
        }
        .frame(height: 45)
        .background(Color.white)
        
    }
}

//struct ProfileTab_Previews: PreviewProvider {
//    static var previews: some View {
//        ProfileTab()
//    }
//}

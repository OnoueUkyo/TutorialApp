//
//  PostView.swift
//  ContentView
//
//  Created by OnoueUkyo on 2023/08/01.
//

import SwiftUI

struct PostView: View {
    @State var showingPicker = false
    @State var image: UIImage?
    var body: some View {
        VStack {
                    if let image = image {
                        Image(uiImage: image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                }
        .sheet(isPresented: $showingPicker) {
                    ImagePickerView(image: $image, sourceType: .library)
                }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

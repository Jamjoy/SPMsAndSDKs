//
//  KingfisherBootcamp.swift
//  SPMsAndSDKs
//
//  Created by Joyanta Mondal on 27/10/24.
//

import SwiftUI
import Kingfisher

struct KingfisherImageLoader: View {
    
    let url: String
    var contentMode: SwiftUI.ContentMode = .fill
    
    var body: some View {
        KFImage(URL(string: url))
            .placeholder {
                Color.red
            }
            .resizable()
            .onProgress { receivedSize, totalSize in
                
            }
            .onSuccess { result in
                
            }
            .onFailure { error in
                
            }
            .aspectRatio(contentMode: contentMode)
    }
}

struct KingfisherBootcamp: View {
    var body: some View {
        ImageLoader(url: "https://picsum.photos/id/237/200/300", contentMode: .fill)
            .frame(width: 100, height: 300)
    }
}

#Preview {
    KingfisherBootcamp()
}

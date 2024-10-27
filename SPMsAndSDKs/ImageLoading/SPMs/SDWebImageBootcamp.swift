//
//  SDWebImageBootcamp.swift
//  SPMsAndSDKs
//
//  Created by Joyanta Mondal on 27/10/24.
//

import SwiftUI
import SDWebImageSwiftUI

struct SDWebImageBootcamp: View {
    var body: some View {
        ImageLoader(url: "https://picsum.photos/id/237/200/300", contentMode: .fill)
            .frame(width: 100, height: 300)
    }
}

#Preview {
    SDWebImageBootcamp()
}

struct SDWebImageLoader: View {
    
    let url: String
    var contentMode: ContentMode = .fill
    
    var body: some View {
        WebImage(url: URL(string: url)) { image in
            image.resizable()
        } placeholder: {
            Color.gray.opacity(0.5)
        }
        .indicator(.activity)
        .aspectRatio(contentMode: contentMode)
            
    }
}

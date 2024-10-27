//
//  ImagePrefetcher.swift
//  SPMsAndSDKs
//
//  Created by Joyanta Mondal on 27/10/24.
//

import Foundation
import SDWebImageSwiftUI

final class ImagePrefetcher {
    
    static let instance = ImagePrefetcher()
    private let prefetcher = SDWebImagePrefetcher()
    
    private init() { }
    
    func startPrefetching(urls: [URL]) {
        prefetcher.prefetchURLs(urls)
    }
    
    func stopPrefetching() {
        prefetcher.cancelPrefetching()
    }
}

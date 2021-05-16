//
//  UIImageView+loadFromURL.swift
//
//  Created by iOSTree on 16/05/21.
//  Copyright © 2021 iOSTree. All rights reserved.
//

import UIKit

let imageCache = NSCache<NSString, UIImage>()

extension UIImageView {
    func setImage(from urlString: String, placeholder: UIImage? = nil, isCache: Bool? = false) {
        if isCache ?? true {
            //Cached images will get here
            if let cachedImage = imageCache.object(forKey: NSString(string: urlString)) {
                self.image = cachedImage
                return
            }
        }
        if let url = URL(string: urlString) {
            DispatchQueue.global().async { [weak self] in
                guard let imgData = try? Data(contentsOf: url),
                      let image = UIImage(data: imgData) else { return }
                DispatchQueue.main.async {
                    //Caching the images
                    if isCache ?? true {
                        imageCache.setObject(image, forKey: NSString(string: urlString))
                    }
                    self?.image = image
                }
            }
        }
        image = placeholder
    }
}

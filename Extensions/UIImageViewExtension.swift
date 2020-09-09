//
//  UIImageViewExtension.swift
//  TEMPLATEENGINE
//
//  Created by ebpearls on 8/12/19.
//  Copyright © 2019 ebpearls. All rights reserved.
//

import UIKit

let imageCache = NSCache<NSString, UIImage>()
extension UIImageView {
    
    func imageFromServerURL(_ URLString: String,_ placeHolder: UIImage?,_ didStartLoading: ((Bool)->())?,_ hideIndicator: ((Bool)->())?) {
        didStartLoading?(true)
        self.image = nil
        if let cachedImage = imageCache.object(forKey: NSString(string: URLString)) {
            self.image = cachedImage
            return
        }
        if let url = URL(string: URLString) {
            URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
                //print("RESPONSE FROM API: \(response)")
                if error != nil {
                    DispatchQueue.main.async {
                        self.image = placeHolder
                        hideIndicator?(true)
                        return
                    }
                    return
                }
                DispatchQueue.main.async {
                    if let data = data {
                        if let downloadedImage = UIImage(data: data) {
                            imageCache.setObject(downloadedImage, forKey: NSString(string: URLString))
                            self.image = downloadedImage
                            hideIndicator?(true)
                            return
                        }
                    }
                }
            }).resume()
        }
    }
}


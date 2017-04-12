//
//  Extensions.swift
//  gameofchats
//
//  Created by Harry Tennent on 12/04/2017.
//  Copyright © 2017 Harry Tennent. All rights reserved.
//

import UIKit

let imageCache = NSCache<AnyObject, AnyObject>()

extension UIImageView {
    
    func loadImageUsingCacheWithURLString(urlString: String) {
        
        let url = NSURL(string: urlString)
        URLSession.shared.dataTask(with: url! as URL, completionHandler: { (data, response, error) in
            
            //download hit an error so lets return out
            if error != nil {
                print(error!)
                return
            }
            
            let backgroundQueue = DispatchQueue(label: "hjt.gameofchats", qos: .background, target: nil)
            backgroundQueue.async {
                self.image = UIImage(data: data!)
            }
            
        }).resume()
        
    }
    
    
}

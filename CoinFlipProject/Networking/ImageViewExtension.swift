//
//  ImageView Extension.swift
//  CoinFlipProject
//
//  Created by Nathaniel Whittington on 7/30/22.
//

import Foundation
import UIKit

extension UIImageView{
    //Extension that downloading date from coin url and sets image to TableViewCell using the main thread.
    func imageFromServerURL(coinImage: String) {
        
        guard let url = URL(string: coinImage) else {return}
        URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let data = data {
                if let downloadedImage = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self.image = downloadedImage
                    }
                }
            }
            
        }).resume()
    }
}

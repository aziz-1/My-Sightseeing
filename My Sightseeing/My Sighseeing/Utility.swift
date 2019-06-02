//
//  Utility.swift
//  My Seightseeing
//
//  Created by Reem on 5/24/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation
import UIKit

class Utility {
    
    
    
    static func returnStringURL(request: APIRequest) -> String {
        
        let requestURL: NSString = "https://commons.wikimedia.org/w/api.php?format=json&action=query&generator=geosearch&ggsprimary=all&ggsnamespace=6&ggsradius=1000&ggscoord=\(request.ggscoord!)&ggslimit=10&prop=imageinfo&iilimit=10&iiprop=url&iiurlwidth=200&iiurlheight=200" as NSString
        
        let validURL : NSString = requestURL.addingPercentEscapes(using: String.Encoding.utf8.rawValue)! as NSString
        
        let editedURL : NSURL = NSURL(string: validURL as String)!
        
        return editedURL.absoluteString!
    }
    
    static func showAlert(message: String, controller: UIViewController) {
        let alertVC = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        controller.present(alertVC, animated: true, completion: nil)
    }
}


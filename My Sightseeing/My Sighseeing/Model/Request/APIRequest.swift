//
//  APIRequest.swift
//  My Seightseeing
//
//  Created by Reem on 5/24/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation

struct APIRequest: Codable {
    let format: String?
    let action: String?
    let generator: String?
    let ggsprimary: String?
    let ggsnamespace: String?
    let ggsradius:String?
    let ggscoord: String?
    let ggslimit: String?
    let prop: String?
    let iilimit: String?
    let iiprop: String?
    let iiurlwidth: String?
    let iiurlheight: String?
    
    init(lat: Double, lon: Double, format: String, action: String, generator: String, ggsprimary: String, ggsnamespace: String, ggsradius: String, ggslimit: String, prop: String, iilimit: String, iiprop: String, iiurlwidth: String, iiurlheight: String) {
        self.format = format
        self.action = action
        self.generator = generator
        self.ggsprimary = ggsprimary
        self.ggsnamespace = ggsnamespace
        self.ggsradius = ggsradius
        self.ggscoord = "\(lat)|\(lon)"
        self.ggslimit = ggslimit
        self.prop = prop
        self.iilimit = iilimit
        self.iiprop = iiprop
        self.iiurlwidth = iiurlwidth
        self.iiurlheight = iiurlheight
    }
    
    
    
}



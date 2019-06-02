//
//  APIResponse.swift
//  My Seightseeing
//
//  Created by Reem on 5/24/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation



struct imageinfo: Codable {
    
    let imageinfo: [url]?
    
    enum CodingKeys: String, CodingKey {
        case imageinfo
        
    }
    
    
    
}

struct url: Codable {
    
    let url: String?
    
    enum CodingKeys: String, CodingKey {
        case url
        
    }
    
    
    
}

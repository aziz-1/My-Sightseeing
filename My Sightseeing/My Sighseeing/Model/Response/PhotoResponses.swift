//
//  Photos.swift
//  My Seightseeing
//
//  Created by Reem on 5/24/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation

struct PhotosResponse: Codable {
    let query:PhotoResponse?
    let batchcomplete: String?
    
    enum CodingKeys: String, CodingKey {
        case query
        case batchcomplete
    }
    
    
}

struct PhotoResponse: Codable {
    let pages: [String:imageinfo]?
    
    enum CodingKeys: String, CodingKey {
        case pages
    }
}

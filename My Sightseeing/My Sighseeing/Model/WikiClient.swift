//
//  UdacityClient.swift
//  My Seightseeing
//
//  Created by Reem on 5/23/19.
//  Copyright © 2019 Udacity. All rights reserved.
//

import Foundation

class WikiClient {
    
    class func taskForGETRequest<ResponseType: Decodable>(url: URL, responseType: ResponseType.Type, completion: @escaping (ResponseType?, Error?) -> Void) -> URLSessionDataTask {
        
        let request = URLRequest(url: url)
        let session = URLSession.shared
        let task = session.dataTask(with: request) { data, response, error in
            guard let data = data else {
                
                DispatchQueue.main.async {
                    
                    completion(nil, error)
                }
                return
            }
            
            let decoder = JSONDecoder()
            do {
                
                let responseObject = try decoder.decode(ResponseType.self, from: data)
                
                DispatchQueue.main.async {
                    
                    completion(responseObject, nil)
                    
                }
            } catch {
                
                completion(nil, error)
                
            }
        }
        task.resume()
        
        return task
    }
    
    class func getPhotos(body: APIRequest, completion: @escaping (PhotosResponse?, Error?) -> Void) {
        
        let url = Utility.returnStringURL(request: body)
  
        if let urlRequest =  URL(string: url) {
            
            taskForGETRequest(url: urlRequest, responseType: PhotosResponse.self) { (response, error) in
                
                
                if let response = response {
                    
                    completion(response, nil)
                    
                }
                else {
                    
                    completion(nil, error)
                }
                
                
            }
            
            
        }
        
    }
    
    
}

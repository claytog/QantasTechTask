//
//  URL+Extension.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import Foundation

extension URL {
    // web service endpoint
    private static var host = Plist.get(key: "baseURL", fromPlist: "API")
    
    static func getAirports() -> URL? {
        
        return URL(string: host)
    }
   

}


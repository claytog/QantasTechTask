//
//  Util.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import Foundation

class Util {

    static let shared: Util = Util()
    
    // reads JSON from a file
    class func readJSON(fileName: String) -> Data!{
         
         var jsonData: Data? = nil
         
         if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
             do {
                 jsonData = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe) as Data
             } catch {
                 // handle error
             }
         }
         return jsonData
     }
}

//
//  Plist.swift
//  QantasTechTask
//
//  Created by Clayton on 8/6/21.
//

import Foundation

class Plist{
    
    class func get(key: String, fromPlist: String)->String{
        
        var returnString: String = ""
        
        var nsDictionary: NSDictionary?
        if let path = Bundle.main.path(forResource: fromPlist, ofType: "plist") {
            nsDictionary = NSDictionary(contentsOfFile: path)
            
            if let val: Any = nsDictionary!.object(forKey: key) {
                
                returnString = val as! String
            }
        }
        return returnString
    }
}

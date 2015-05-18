//
//  Armor.swift
//  ParseSubclass
//
//  Created by Sebastien Arbogast on 18/05/2015.
//  Copyright (c) 2015 Epseelon. All rights reserved.
//

class Armor : PFObject, PFSubclassing {
    override class func initialize() {
        struct Static {
            static var onceToken : dispatch_once_t = 0;
        }
        dispatch_once(&Static.onceToken) {
            self.registerSubclass()
        }
    }
    
    static func parseClassName() -> String {
        return "Armor"
    }
}

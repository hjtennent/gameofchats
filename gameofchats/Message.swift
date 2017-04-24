//
//  Message.swift
//  gameofchats
//
//  Created by Harry Tennent on 14/04/2017.
//  Copyright © 2017 Harry Tennent. All rights reserved.
//

import UIKit
import Firebase

class Message: NSObject {
    
    var fromId: String?
    var text: String?
    var timestamp: NSNumber?
    var toId: String?
    
    func chatPartnerId() -> String? {
        
        if fromId == FIRAuth.auth()?.currentUser?.uid {
            return toId
        } else {
            return fromId
        }
    }
    
}

//
//  StringProtocol.swift
//  
//
//  Created by Russell Gordon on 2022-05-25.
//

import Foundation

extension StringProtocol {
    
    // Allows access to a string using it's index in subscript notation, like the gods intended
    // SEE: https://www.simpleswiftguide.com/get-character-from-string-using-its-index-in-swift/
    // TODO: Fix issue where TypedText old message doesn't seem to change; this behaviour for the extension is a hack and wrong
    subscript(offset: Int) -> Character {
        if offset < self.count {
            return self[index(startIndex, offsetBy: offset)]
        } else {
            return "~"
        }
    }
    
}

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
    subscript(offset: Int) -> Character {
        print("self.count is \(self.count)")
        print("offset is: \(offset)")
        return self[index(startIndex, offsetBy: offset)]
    }
    
}

//
//  RetroTextViewModifier.swift
//  
//
//  Created by Russell Gordon on 2022-05-21.
//

import Foundation
import SwiftUI

public struct RetroTextViewModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        
        content
            .font(Font.custom("KongText", size: 24))
        
    }
    
}

extension View {
    public func retroText() -> some View {
        self.modifier(RetroTextViewModifier())
    }
}

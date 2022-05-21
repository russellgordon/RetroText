//
//  RetroTextViewModifier.swift
//  
//
//  Created by Russell Gordon on 2022-05-21.
//

import Foundation
import SwiftUI

public struct RetroTextViewModifier: ViewModifier {
    
    // MARK: Stored properties
    let font: RetroTextFont
    let size: CGFloat
    
    // MARK: Functions
    public func body(content: Content) -> some View {
        
        content
        // Apply the selected font
            .font(Font.custom(font.rawValue, size: size))
        
    }
    
}

extension View {
    
    /// Apply a class video game-style font with the given name and size that scales with the body text style
    public func retroText(font: RetroTextFont = .kongText,
                          size: CGFloat = 24.0) -> some View {
        
        self.modifier(RetroTextViewModifier(font: font,
                                            size: size))
        
    }

    /// Apply a class video game-style font with the given name whose size scales with the body text style
    public func retroText(font: RetroTextFont = .kongText) -> some View {
        
        self.modifier(RetroTextViewModifier(font: font,
                                            size: 24.0))
        
    }

}

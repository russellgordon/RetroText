//
//  RetroFontViewModifier.swift
//  
//
//  Created by Russell Gordon on 2022-05-21.
//

import Foundation
import SwiftUI

public struct RetroFontViewModifier: ViewModifier {
    
    // MARK: Stored properties
    let font: RetroTextFont
    let size: CGFloat
    
    // MARK: Functions
    public init(_ font: RetroTextFont, size: CGFloat) {
        self.font = font
        self.size = size
    }
    
    public func body(content: Content) -> some View {
        
        content
        // Apply the selected font
            .font(Font.custom(font.rawValue, size: size))
        
    }
    
}

extension View {
    
    /// Apply a class video game-style font with the given name and size that scales with the body text style.
    public func retroFont(_ font: RetroTextFont = .kongText,
                          size: CGFloat = 24.0) -> some View {
        
        self.modifier(RetroFontViewModifier(font,
                                            size: size))
        
    }
    
    /// Apply a class video game-style font whose size scales with the body text style.
    public func retroFont(_ font: RetroTextFont = .kongText) -> some View {
        
        self.modifier(RetroFontViewModifier(font,
                                            size: 24.0))
        
    }
    
}

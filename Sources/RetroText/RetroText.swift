import Foundation
import SwiftUI

// NOTE: Font registration completed by using this tutorial...
// https://jacobzivandesign.com/technology/custom-fonts-from-swift-package/
public struct RetroText {
    
    // Finds a font file in the bundle and tells the OS to register the font for use
    // NOTE: We want this function to be private to the module, it needs the bundle, the name of the font file, and the file extension.
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        
        // 1. Locate the font file
        // 2. Convert the found font file to a Core Graphics Data Provider
        // 3. Convert the data provider into a font we can use
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
            let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
            let font = CGFont(fontDataProvider) else {
                fatalError("Couldn't create font from filename: \(fontName) with extension \(fontExtension)")
        }
        
        // 4. Register the new font with the Core Graphics Font Manager
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
        
    }
    
    // Register all the fonts provided with this module
    public static func registerFonts() {
        RetroTextFonts.allCases.forEach { currentFont in
            
            registerFont(bundle: .module,
                         fontName: currentFont.rawValue,
                         fontExtension: "ttf")
            
        }
    }

}

public struct RetroFontViewModifier: ViewModifier {
    
    public func body(content: Content) -> some View {
        
        content
            .font(Font.custom("KongText", size: 24))
        
    }
    
}

extension View {
    public func retroFont() -> some View {
        self.modifier(RetroFontViewModifier())
    }
}

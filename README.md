# RetroText

Easily use classic video game-style text in your SwiftUI application.

## Installation

To install this package, import `https://github.com/russellgordon/RetroText` in Swift Package Manager.

## Usage

### Register Fonts

First, the fonts distributed within this module must be registered with the operating system from within your app.

You'll need to open the App.swift file *wherever* `@main` *is located*.

For example, say your project is named **PipersAdventure**, then the file you need to modify is going to be `PipersAdventureApp.swift`.

Up top, import the RetroText package. Then, add an initializer function and use the provided static function to register fonts, like so:

```swift

import RetroText
import SwiftUI

@main
struct PipersAdventureApp: App {

    init() {
        RetroText.registerFonts()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

```

### Usage for Static Text

To make static retro-style text appear with reasonable defaults for typeface and size:

```swift

struct ContentView: View {
    var body: some View {
        
        Text("Come with me, and see what has been foretold...")
            .retroText()
            .padding()
        
    }
}

```

All that the `.retroText()` view modifier does is apply one of the custom fonts that is bundled with this module.

As desired, you can adjust the typeface:

```swift

struct ContentView: View {
    var body: some View {
        
        Text("Come with me, and see what has been foretold...")
            .retroText(font: .pixelEmulator)
            .padding()
        
    }
}

```

Or both the typeface and size:

```swift

struct ContentView: View {
    var body: some View {
        
        Text("Come with me, and see what has been foretold...")
            .retroText(font: .pixelEmulator, size: 18.0)
            .padding()
        
    }
}

```


## Acknowledgements

This module was created by mashing together ideas from tutorials authored by several generous individuals.

In no particular order:

* [Achieving a Type-On Text Effect in Swift](https://medium.com/@cboynton/achieving-a-type-on-text-effect-in-swift-6934b683d1e9) by [Christopher Boynton](https://medium.com/@cboynton)
* [Create your own Swift Package | Xcode, SPM, Swift Tutorial](https://www.youtube.com/watch?v=CekYZzsXmII) by [Florian Schweizer](https://twitter.com/FloWritesCode)
* [Packaging your Custom Fonts in Swift Packages](https://jacobzivandesign.com/technology/custom-fonts-from-swift-package/) [Jacob Rakidzich](https://github.com/JZDesign/)
* [SwiftUI Custom View Modifiers](https://useyourloaf.com/blog/swiftui-custom-view-modifiers/) by [Keith Harrison](https://twitter.com/kharrison)

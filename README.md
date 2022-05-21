# RetroText

Makes a SwiftUI `Text` view behave like text from a classic video game.

## Installation

To install this package, import `https://github.com/russellgordon/RetroText` in Swift Package Manager.

Here's how to do that.

Say your project happens to be named **PipersAdventure**.

Begin by accessing the **Package Dependencies** tab for your project and then using the **+** button to add a new dependency:

<img width="500" alt="step-a" src="https://user-images.githubusercontent.com/6400195/169652120-64633939-41e6-4a4e-a5f5-3e58e4351e04.png">

Then paste the [address of this package](https://github.com/russellgordon/RetroText) into the search field and select **Add Package**:

<img width="500" alt="step-b" src="https://user-images.githubusercontent.com/6400195/169652204-64d50b74-6d35-4214-abff-7c1aaf534b46.png">

On the next dialog that appears, select **Add Package** again to add to the target for your app:

<img width="500" alt="step-c" src="https://user-images.githubusercontent.com/6400195/169652243-17620578-75e8-4116-a278-dd98deb30097.png">

When the package has been imported, your application will look something like this:

<img width="500" alt="step-d" src="https://user-images.githubusercontent.com/6400195/169652261-d1a4bea2-a040-4b64-ac8c-22066934a0ca.png">

## Usage

First, the fonts distributed within this module must be registered with the operating system from within your app.

You'll need to open the `App.swift` file *wherever* `@main` *is located*.

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

Then, to make actually make the retro-style text appear, use:

```swift

struct ContentView: View {
    
    var body: some View {
        Text("Come with me, and see what has been foretold...")
            .retroText()
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

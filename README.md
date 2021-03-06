# RetroText

Easily use classic video game-style text in your SwiftUI application.

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

### Register Fonts

First, the fonts distributed within this package must be registered with the operating system from within your app.

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

### Usage for Static Text

To make static retro-style text appear with reasonable defaults for typeface and size:

```swift

struct ContentView: View {
    var body: some View {
        
        Text("Come with me, and see what has been foretold...")
            .retroFont()
            .padding()
        
    }
}

```

All that the `.retroFont()` view modifier does is apply one of the custom fonts that is bundled with this package.

<img width="154" alt="example1" src="https://user-images.githubusercontent.com/6400195/169651273-5db919df-5ff1-4caa-bb8b-1e74d6727c2e.png">

As desired, you can adjust the typeface:

```swift

struct ContentView: View {
    var body: some View {
        
        Text("Come with me, and see what has been foretold...")
            .retroFont(.pixelEmulator)
            .padding()
        
    }
}

```

<img width="154" alt="example2" src="https://user-images.githubusercontent.com/6400195/169651292-73b68860-5c93-49e2-bf54-bcd9640506eb.png">

Or both the typeface and size:

```swift

struct ContentView: View {
    var body: some View {
        
        Text("Come with me, and see what has been foretold...")
            .retroFont(.pixelEmulator, size: 18.0)
            .padding()
        
    }
}

```

<img width="154" alt="example3" src="https://user-images.githubusercontent.com/6400195/169651305-12d154de-6451-4c6f-a584-796d5445109d.png">

Note that you are not limited to using the `.retroFont()` view modifier; within your own app, you can [add a custom font](https://betterprogramming.pub/swiftui-basics-importing-custom-fonts-b6396d17424d) and apply it as desired. Here are some examples of [retro-style typefaces available](https://www.1001fonts.com/retro+1980s-fonts.html) for download.

### Usage for Live Typing Effect

A common technique in classic video games was to have dialogue from the game be "spoken" to the player as a typing animation.

<img src="https://miro.medium.com/max/996/1*Qu_VMx3gXfAnEWjmhjOP2Q.gif">

Be sure to read [Christopher Boynton's original article on Medium](https://medium.com/@cboynton/achieving-a-type-on-text-effect-in-swift-6934b683d1e9), from which the image above was sourced, and from which the core concepts for this package were adapted.

The typing effect alone can be achieved in your app like so:

```swift

struct ContentView: View {
    var body: some View {
        
        TypedText()
            .padding()
        
    }
}

```
<img height="600" alt="example-i" src="https://user-images.githubusercontent.com/6400195/169653240-abd48793-6a8d-412f-aaf3-5e6593cf7ebc.gif">

To show this with a classic video game font, apply the `.retroFont` view modifier:

```swift

struct ContentView: View {
    var body: some View {
        
        TypedText()
            .retroFont()
            .padding()
        
    }
}

```

<img height="600" alt="example-ii" src="https://user-images.githubusercontent.com/6400195/169653017-6f7ba40a-9cf4-47ad-9771-863ff532ec0e.gif">

Of course, the message, speed of typing effect, font, and font size can be customized:

```swift

struct ContentView: View {
    var body: some View {
        
        TypedText("Behold... the coming of a new queen!", speed: .fast)
            .retroFont(.pixelEmulator, size: 24.0)
            .padding()
        
    }
}

```

<img height="600" alt="example-iii" src="https://user-images.githubusercontent.com/6400195/169661710-cc7bd28f-9d73-4121-a6b9-4aae5e853069.gif">

Finally, you can use `#` marks to introduce a slight pause for the typing effect. This can be used to build tension or drama:

```swift

struct ContentView: View {
    var body: some View {
        
        TypedText("Behold#.#.#. the coming of a new### queen###!", speed: .normal)
            .retroFont(.pixelEmulator, size: 24.0)
            .padding()
        
    }
}
```

<img height="600" alt="example-iv" src="https://user-images.githubusercontent.com/6400195/169661637-991d9571-14db-49cd-a198-f410e39f672f.gif">

## Acknowledgements

This package was created by mashing together ideas from tutorials authored by several generous individuals.

In no particular order:

* [Achieving a Type-On Text Effect in Swift](https://medium.com/@cboynton/achieving-a-type-on-text-effect-in-swift-6934b683d1e9) by [Christopher Boynton](https://medium.com/@cboynton)
* [Create your own Swift Package | Xcode, SPM, Swift Tutorial](https://www.youtube.com/watch?v=CekYZzsXmII) by [Florian Schweizer](https://twitter.com/FloWritesCode)
* [Packaging your Custom Fonts in Swift Packages](https://jacobzivandesign.com/technology/custom-fonts-from-swift-package/) by [Jacob Rakidzich](https://github.com/JZDesign/)
* [SwiftUI Custom View Modifiers](https://useyourloaf.com/blog/swiftui-custom-view-modifiers/) by [Keith Harrison](https://twitter.com/kharrison)

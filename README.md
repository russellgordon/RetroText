# RetroText

Makes a SwiftUI `Text` view behave like text from a classic video game.

## Installation

To install this package, import `https://github.com/russellgordon/RetroText` in Swift Package Manager.

## Usage

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
 
## License

This module makes use of fonts authored by other people.

The following are exact reproductions of the licenses these fonts were distributed under.

### KongText

Thanks for downloading one of codeman38's retro video game fonts, as seen on Memepool, BoingBoing, and all around the blogosphere.

So, you're wondering what the license is for these fonts? Pretty simple; it's based upon that used for Bitstream's Vera font set <http://www.gnome.org/fonts/>.

Basically, here are the key points summarized, in as little legalese as possible; I hate reading license agreements as much as you probably do:

With one specific exception, you have full permission to bundle these fonts in your own free or commercial projects-- and by projects, I'm referring to not just software but also electronic documents and print publications.

So what's the exception? Simple: you can't re-sell these fonts in a commercial font collection. I've seen too many font CDs for sale in stores that are just a repackaging of thousands of freeware fonts found on the internet, and in my mind, that's quite a bit like highway robbery. Note that this *only* applies to products that are font collections in and of themselves; you may freely bundle these fonts with an operating system, application program, or the like.

Feel free to modify these fonts and even to release the modified versions, as long as you change the original font names (to ensure consistency among people with the font installed) and as long as you give credit somewhere in the font file to codeman38 or zone38.net. I may even incorporate these changes into a later version of my fonts if you wish to send me the modifed fonts via e-mail.

Also, feel free to mirror these fonts on your own site, as long as you make it reasonably clear that these fonts are not your own work. I'm not asking for much; linking to zone38.net or even just mentioning the nickname codeman38 should be enough.

Well, that pretty much sums it up... so without further ado, install and enjoy these fonts from the golden age of video games.

[ codeman38 | cody@zone38.net | http://www.zone38.net/ ]

### PixelEmulator

Shareware/ Font License

Pixel Sagas Freeware Fonts EULA (End User License Agreement) and Software Inclusion Agreement

"Purchaser" and "User" may be used interchangeably in this agreement.

"Pixel Sagas" and "Neale Davidson" may be used interchangeably in this agreement. These all refer to the intellectual and legal property of Neale Davidson.

Usage

Pixel Saga's Shareware Fonts are free to use for personal, non-commercial purposes. No payment is necessary to use Pixel Saga's Freeware Fonts for personal use, and there is no limit to the amount of prints, pages, or other medium to be produced using them. However, you cannot offer the font for commercial sale, or offer for direct download. The inclusion othe font name and/or site URL in the credits or documentation when it is used is appreciated, but this is not mandatory.

Payment

Payment is not required for the use of Pixel Saga's Shareware Fonts. Commercial use requires a modest fee which can be paid through the pixelsagas.com web site through Paypal.com's services. The transaction receipt for any shareware "commercial license" purchase will suffice as proof of license.

Support

Font installation help is available at http://www.pixelsagas.com. If you experience problems with any Pixel Saga's Freeware font (such as spacing issues or missing characters), please verify that you have the correct and current version of the fonts. In the case of Freeware fonts, downloading the font directly from the Pixel Sagas site will ensure that the font files have not been altered.

Software Inclusion Agreement

Pixel Saga's software products are protected by copyright laws and International copyright treaties, as well as other intellectual property laws and treaties. All Pixel Saga's software products are licensed, not sold.

1) GRANT OF LICENSE

This document grants the user the following rights:

Installation and Use. The user may install and use an unlimited number of copies of the software product. The user may not offer Pixel Sagas freeware fonts for direct download unless the user has received explicit, written permission from Neale Davidson. Otherwise please direct users to the http://www.pixelsagas.com website. Pixel Sagas freeware fonts may, however, be embedded for web, publication, or general software use.

2) WARRANTIES

None

Pixel Sagas expressly disclaims any warranty for the software product. The software product and any related documentation is provided "as is" without warranty of any kind, either express or implied, including, without limitation, the implied warranties or merchantability, fitness for a particular purpose, or non-infringement. The entire risk arising out of use or performance of the software product remains with the user.

No Liability For Consequential Damages.

In no event shall Neale Davidson or Pixel Sagas be liable for any damages whatsoever (including, without limitation, damages for loss of business profits, business interruption, loss of business information, or any other pecuniary loss) arising out of the use of or inability to use this product, even if Pixel Sagas has been advised of the possibility of such damages.

3) MISCELLANEOUS

Should the user have any questions concerning this document or you desire to contact Neale Davidson for any reason, please email jaynz@pixelsagas.com .

Governing Law

This agreement is governed by and subject to the laws of the United States of America.


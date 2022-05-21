//
//  TypedText.swift
//  
//
//  Created by Russell Gordon on 2022-05-21.
//

import Foundation
import SwiftUI

public struct TypedText: View {
    
    // MARK: Stored properties

    // The message to be "typed" on to the screen
    let message: String

    // How fast to type the text
    let speed: RetroTextTypeEffectSpeed

    // Whether to show a bounding box around the view that contains the typed text
    let debug: Bool
    
    // An array of characters that form the message to be shown
    var characterArray = Array("")
    
    // Counter to control timing
    @State var timingCounter = 0
    
    // What character we are currently showing
    @State var characterIndex = 0
    
    // Extra spaces added to force text view to be as wide
    // as possible to avoid wrapping issues when text is revealed
    // TODO: Fix this hack; the number of spaces is a guess and probably won't work for all device sizes
    @State var textToShow = "                                                                                                                                        "
    
    // Drives the reveal of each character
    @State var timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    // MARK: Computed properties
    public var body: some View {
        
        HStack {
            Text(textToShow)
                .border(.red, width: debug ? 1.0 : 0.0)
                .onReceive(timer) { input in
                    
                    // Skip spaces
                    while characterArray[characterIndex] == " " {
                        textToShow.append(" ")
                        characterIndex += 1
                        
                        // Stop the timer if at the end of the message
                        if characterIndex == characterArray.count {
                            timer.upstream.connect().cancel()
                            return
                        }
                        
                    }
                    
                    // Increment timing counter
                    timingCounter += 1

                    // Only animate when the timing counter is a multiple of the speed
                    if timingCounter.isMultiple(of: speed.rawValue) {

                        // Only animate letters (pause when hash sign found)
                        if characterArray[characterIndex] != "#" {
                            // Add one more letter to the text view
                            textToShow.append(characterArray[characterIndex])
                        }
                        
                        // Advance to next letter
                        characterIndex += 1
                        
                        // Stop the timer if at the end of the message
                        if characterIndex == characterArray.count {
                            timer.upstream.connect().cancel()
                        }

                    }
                    
                }

            Spacer()
        }
        
    }

    // MARK: Functions
    // Runs once when the view modifier is applied
    public init(_ message: String = "Come with me###, and see what has been foretold#.#.#.",
                speed: RetroTextTypeEffectSpeed = .normal,
                debug: Bool = false) {
        
        // Set the message
        self.message = message
        
        // The speed at which text should be typed
        self.speed = speed

        // Whether to show the frame of the text view
        self.debug = debug

        // Set the array of characters
        characterArray = Array(message)
        
    }
    
    public init(_ message: String = "Come with me###, and see what has been foretold#.#.#.",
                speed: RetroTextTypeEffectSpeed = .normal) {
        
        // Set the message
        self.message = message
        
        // The speed at which text should be typed
        self.speed = speed

        // Whether to show the frame of the text view
        self.debug = false

        // Set the array of characters
        characterArray = Array(message)
        
    }
    
    public init(_ message: String = "Come with me###, and see what has been foretold#.#.#.") {
        
        // Set the message
        self.message = message
        
        // The speed at which text should be typed
        self.speed = .normal

        // Whether to show the frame of the text view
        self.debug = false

        // Set the array of characters
        characterArray = Array(message)
        
    }
    
}

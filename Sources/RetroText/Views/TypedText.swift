//
//  TypedText.swift
//  
//
//  Created by Russell Gordon on 2022-05-21.
//

import Foundation
import SwiftUI

/**
 Creates a "typed on" effect where each letter of the message is revealed over time.
 
 You can use `#` signs to introduce a pause as letters are typed, which can build tension or create drama.
 
 For example:
 ```
 struct ContentView: View {
     var body: some View {
         TypedText("Come with me###, and see what has been foretold#.#.#.")
             .padding()
     }
 }
 ```
 */
public struct TypedText: View {
    
    // MARK: Stored properties

    // The message to be "typed" on to the screen
    let message: String

    // How fast to type the text
    let speed: RetroTextTypeEffectSpeed

    // Whether to show a bounding box around the view that contains the typed text
    let debug: Bool

    // Used to keep track of when the message has changed
    // Need this to reset control 🤔
    @State var oldMessage = ""
    
    // Counter to control timing
    @State var timingCounter = 0
    
    // What character we are currently showing
    @State var characterIndex = 0
    
    // Extra spaces added to force text view to be as wide
    // as possible to avoid wrapping issues when text is revealed
    // TODO: Fix this hack; the number of spaces is a guess and probably won't work for all device sizes
    @State var textToShow = leadingSpaces
    
    // Drives the reveal of each character
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    // MARK: Computed properties
    public var body: some View {
        
        HStack {
            Text(textToShow)
                .border(.red, width: debug ? 1.0 : 0.0)
                .onReceive(timer) { _ in
                    
                    // When the message has changed under our feet...
                    if oldMessage != message {
                        resetProperties()
                    }
                    
                    // Skip spaces
                    if !message.isEmpty {
                        while message[characterIndex] == " " {
                            textToShow.append(" ")
                            characterIndex += 1
                            
                            // Stop the timer if at the end of the message
                            if characterIndex == message.count {

                                // Track the message currently being shown
                                oldMessage = message

                                // Cancel the timer
                                timer.upstream.connect().cancel()
                                return
                            }
                            
                        }
                    }
                    
                    // Increment timing counter
                    timingCounter += 1

                    // Only animate when the timing counter is a multiple of the speed
                    if timingCounter.isMultiple(of: speed.rawValue) {

                        // Only animate letters (pause when hash sign found)
                        if !message.isEmpty {
                            if message[characterIndex] != "#" {
                                // Add one more letter to the text view
                                textToShow.append(message[characterIndex])
                            }
                        }
                        
                        // Advance to next letter
                        characterIndex += 1
                        
                        // Stop the timer if at the end of the message
                        if characterIndex == message.count {
                            timer.upstream.connect().cancel()
                        }

                    }
                    
                    // Track the message currently being shown
                    oldMessage = message
                    
                }

            Spacer()
        }
        
    }

    // MARK: Functions
    /// Creates a "typed on" effect where each letter of the message is revealed over time, as controlled by the given message, speed, and debug arguments.
    ///
    /// You can use `#` signs to introduce a pause as letters are typed, which can build tension or create drama.
    /// For example:
    /// ```
    /// struct ContentView: View {
    ///     var body: some View {
    ///         TypedText("Come with me###, and see what has been foretold#.#.#.")
    ///             .padding()
    ///     }
    /// }
    /// ```
    /// - Parameters:
    ///   - message: What message should be typed on the screen.
    ///   - speed: How fast the message should be typed.
    ///   - debug: Whether to show a red border around the view; useful for debugging potential layout issues.
    public init(_ message: String = "Come with me###, and see what has been foretold#.#.#.",
                speed: RetroTextTypeEffectSpeed = .normal,
                debug: Bool = false) {
        
        // Set the message
        self.message = message
        
        // The speed at which text should be typed
        self.speed = speed

        // Whether to show the frame of the text view
        self.debug = debug
        
    }
    
    /// Creates a "typed on" effect where each letter of the message is revealed over time, as controlled by the given message, speed, and debug arguments.
    ///
    /// You can use `#` signs to introduce a pause as letters are typed, which can build tension or create drama.
    /// For example:
    /// ```
    /// struct ContentView: View {
    ///     var body: some View {
    ///         TypedText("Come with me###, and see what has been foretold#.#.#.")
    ///             .padding()
    ///     }
    /// }
    /// ```
    /// - Parameters:
    ///   - message: What message should be typed on the screen.
    ///   - speed: How fast the message should be typed.
    public init(_ message: String = "Come with me###, and see what has been foretold#.#.#.",
                speed: RetroTextTypeEffectSpeed = .normal) {
        
        // Set the message
        self.message = message
        
        // The speed at which text should be typed
        self.speed = speed

        // Whether to show the frame of the text view
        self.debug = false
        
    }
    
    /// Creates a "typed on" effect where each letter of the message is revealed over time, as controlled by the given message, speed, and debug arguments.
    ///
    /// You can use `#` signs to introduce a pause as letters are typed, which can build tension or create drama.
    /// For example:
    /// ```
    /// struct ContentView: View {
    ///     var body: some View {
    ///         TypedText("Come with me###, and see what has been foretold#.#.#.")
    ///             .padding()
    ///     }
    /// }
    /// ```
    /// - Parameters:
    ///   - message: What message should be typed on the screen.
    public init(_ message: String = "Come with me###, and see what has been foretold#.#.#.") {
        
        // Set the message
        self.message = message
        
        // The speed at which text should be typed
        self.speed = .normal

        // Whether to show the frame of the text view
        self.debug = false

    }
    
    // Clear other properties when view is being re-used
    fileprivate func resetProperties() {

        // Counter to control timing
        timingCounter = 0
        
        // What character we are currently showing
        characterIndex = 0
        
        // Extra spaces added to force text view to be as wide
        textToShow = leadingSpaces

    }
    
}
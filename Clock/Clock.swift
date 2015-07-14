/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

class Clock {
    // currentTime  is a computed property
    // In addition to stored properties, classes, structures, and enumerations can define
    // computed properties, which do not actually store a value. Instead, they provide a 
    // getter and an optional setter to retrieve and set other properties and values indirectly.
    // Refer - https://developer.apple.com/library/ios/documentation/Swift/Conceptual/Swift_Programming_Language/Properties.html#//apple_ref/doc/uid/TP40014097-CH14-ID259

    var currentTime: NSDate {
        return NSDate()
    }
    
}
//
//  TVCommand.swift
//  Bravia TV Remote
//
//  Created by Craig Rhodes on 4/6/17.
//  Copyright © 2017 Craig Rhodes. All rights reserved.
//

import Foundation


enum TVCommand: String {
    case power = "AAAAAQAAAAEAAAAVAw=="
    case enter = "AAAAAgAAAJcAAABKAw=="
    case pictureOff = "AAAAAQAAAAEAAAA+Aw=="
    case input = "AAAAAQAAAAEAAAAlAw=="
    
    // MARK: Numbers
    case numberOne = "AAAAAQAAAAEAAAAAAw=="
    case numberTwo = "AAAAAQAAAAEAAAABAw=="
    case numberThree = "AAAAAQAAAAEAAAACAw=="
    case numberFour = "AAAAAQAAAAEAAAADAw=="
    case numberFive = "AAAAAQAAAAEAAAAEAw=="
    case numberSix = "AAAAAQAAAAEAAAAFAw=="
    case numberSeven = "AAAAAQAAAAEAAAAGAw=="
    case numberEight = "AAAAAQAAAAEAAAAHAw=="
    case numberNine = "AAAAAQAAAAEAAAAIAw=="
    case numberZero = "AAAAAQAAAAEAAAAJAw=="
    
    // MARK: Volume Control
    case volumeUp = "AAAAAQAAAAEAAAASAw=="
    case volumeDown = "AAAAAQAAAAEAAAATAw=="
    case mute = "AAAAAQAAAAEAAAAUAw=="
    
    // MARK: Playback Control
    case play = "AAAAAgAAAJcAAAAaAw=="
    case pause = "AAAAAgAAAJcAAAAZAw=="
    case stop = "AAAAAgAAAJcAAAAYAw=="
    case rewind = "AAAAAgAAAJcAAAAbAw=="
    case fastForward = "AAAAAgAAAJcAAAAcAw=="
    case next = "AAAAAgAAAJcAAAA9Aw=="
    case prev = "AAAAAgAAAJcAAAA8Aw=="
    
    // MARK: Navigation
    case up = "AAAAAgAAAJcAAABPAw=="
    case down = "AAAAAgAAAJcAAABQAw=="
    case left = "AAAAAgAAAJcAAABNAw=="
    case right = "AAAAAgAAAJcAAABOAw=="
    case netflix = "AAAAAgAAABoAAAB8Aw=="
    
}

//
//  Constants.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/11/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

enum Direction {
    case left
    case right
    case up
    case down
}

struct PhysicsCategory {
    static let None      : UInt32 = 0
    static let All       : UInt32 = UInt32.max
    static let Obstacle   : UInt32 = 0b1
    static let Ninja: UInt32 = 0b10
}

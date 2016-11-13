//
//  PitEntity.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class PitEntity : GameEntity
{
    var toggle : Bool = false
    
    init() {
        super.init(imageNamed: "pit")
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.Pit
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
        self.physicsBody?.collisionBitMask = PhysicsCategory.Pit
        
        self.worthUpdating = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        super.init(coder: aDecoder)
        
        self.worthUpdating = true
    }
    
    override func update()
    {
        if (toggle)
        {
            self.removeFromParent()
            gameEntities.remove(at: gameEntities.index(of: self)!)
        }
    }
}

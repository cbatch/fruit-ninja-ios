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
    
    init(fileNamed: String) {
        super.init(imageNamed: fileNamed)
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.Pit
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
        self.physicsBody?.collisionBitMask = PhysicsCategory.Pit
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        super.init(coder: aDecoder)
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

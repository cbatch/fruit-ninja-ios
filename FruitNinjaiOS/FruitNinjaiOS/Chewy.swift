//
//  Chewy.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/11/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class Chewy : GameEntity
{
    var facingDirection : Direction
    var lastPosition : CGPoint = CGPoint(x: 0.0, y: 0.0)
    var collision : Bool = false
    
    init() {
        facingDirection = .down
        
        super.init(imageNamed: "chewy_down0")
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: (gridSize * 0.4))
        self.physicsBody?.categoryBitMask = PhysicsCategory.Ninja
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Obstacle | PhysicsCategory.Arrow
        self.physicsBody?.collisionBitMask = PhysicsCategory.Ninja
        
        self.worthUpdating = true
    }
    
    func bounceBack()
    {
        print ("this is being called")
        position = lastPosition
    }
    
    override func update()
    {
        if (collision)
        {
            bounceBack()
            collision = false
        }
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        facingDirection = .down
        
        super.init(coder: aDecoder)
        self.worthUpdating = true
    }
}

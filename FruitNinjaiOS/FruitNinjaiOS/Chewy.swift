//
//  Chewy.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/11/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class Chewy : SKSpriteNode
{
    var facingDirection : Direction
    var lastPosition : CGPoint = CGPoint(x: 0.0, y: 0.0)
    var collision : Bool = false
    
    init() {
        facingDirection = .down
        
        let texture = SKTexture(imageNamed: "chewy_down0")
        super.init(texture: texture, color: .black, size: texture.size())
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: (gridSize * 0.45))
        self.physicsBody?.categoryBitMask = PhysicsCategory.Ninja
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Obstacle
        self.physicsBody?.collisionBitMask = PhysicsCategory.Ninja
    }
    
    func bounceBack()
    {
        print ("this is being called")
        position = lastPosition
    }
    
    func update()
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
    }
}

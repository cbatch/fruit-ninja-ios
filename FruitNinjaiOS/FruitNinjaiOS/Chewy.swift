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
    
    
    init() {
        facingDirection = .down
        
        let texture = SKTexture(imageNamed: "chewy_down0")
        super.init(texture: texture, color: .black, size: texture.size())
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: (gridSize * 0.5))
        self.physicsBody?.categoryBitMask = PhysicsCategory.Ninja
        self.physicsBody?.contactTestBitMask = PhysicsCategory.All
        self.physicsBody?.collisionBitMask = PhysicsCategory.All
        self.physicsBody?.usesPreciseCollisionDetection = true
        self.physicsBody?.isDynamic = true
    }
    
    func bounceBack()
    {
        print ("this is being called")
        position.x += gridSize
        position.y += 2 * gridSize
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        facingDirection = .down
        super.init(coder: aDecoder)
    }
}

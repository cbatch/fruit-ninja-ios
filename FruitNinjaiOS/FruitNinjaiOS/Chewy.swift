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
    var shootArrow : Bool = false
    var facingDirection : Direction {
        didSet {
            switch (facingDirection)
            {
            case .up:
                chewy.texture? = SKTexture(imageNamed: "chewy_up0")
            case .down:
                chewy.texture? = SKTexture(imageNamed: "chewy_down0")
            case .left:
                chewy.texture? = SKTexture(imageNamed: "chewy_left0")
            case .right:
                chewy.texture? = SKTexture(imageNamed: "chewy_right0")
            }
        }
    }
    var lastPosition : CGPoint = CGPoint(x: 0.0, y: 0.0)
    var collision : Bool = false
    
    init() {
        facingDirection = .down
        super.init(imageNamed: "chewy_down0")
        
        self.physicsBody = SKPhysicsBody(circleOfRadius: (gridSize * 0.4))
        self.physicsBody?.categoryBitMask = PhysicsCategory.Ninja
        self.physicsBody?.contactTestBitMask = PhysicsCategory.All
        self.physicsBody?.collisionBitMask = PhysicsCategory.Ninja
    }
    
    func bounceBack()
    {
        position = lastPosition
    }
    
    override func update()
    {
        if (collision)
        {
            bounceBack()
            collision = false
        }
        if (shootArrow)
        {
            spawnArrow(position: chewy.position, direction: chewy.facingDirection)
            shootArrow = false
        }
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        facingDirection = .down
        
        super.init(coder: aDecoder)
    }
}

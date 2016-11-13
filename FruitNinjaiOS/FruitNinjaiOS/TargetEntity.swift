//
//  TargetEntity.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class TargetEntity : SwitchEntity
{
    var hit : Bool = false
    var hitOnce : Bool = false
    
    init() {
        super.init(imageNamed: "target_down")
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.Target
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja | PhysicsCategory.Arrow
        self.physicsBody?.collisionBitMask = PhysicsCategory.Target
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        super.init(coder: aDecoder)
    }
    
    override func update()
    {
        if (hit && !hitOnce)
        {
            levelManager.switchCounter -= 1
            if (levelManager.switchCounter == 0)
            {
                levelManager.switchAction()
            }
            
            hitOnce = true
        }
    }
}

//
//  PineappleEntity.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/13/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class PineappleEntity : SwitchEntity
{
    var isRecovered : Bool = false
    var isRecoveredOnce : Bool = false
    
    init()
    {
        super.init(imageNamed: "pineapple")
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.Pineapple
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
        self.physicsBody?.collisionBitMask = PhysicsCategory.Pineapple
    }
    
    override func update()
    {
        if (isRecovered && !isRecoveredOnce)
        {
            levelManager.switchCounter -= 1
            if (levelManager.switchCounter == 0)
            {
                levelManager.switchAction()
            }
            isRecoveredOnce = true
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        
        super.init(coder: aDecoder)
    }
}

//
//  Torch.swift
//  FruitNinjaiOS
//
//  Created by Ian Meeder on 11/13/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class TorchEntity : SwitchEntity
{
    var isLit : Bool = false
    var isLitOnce : Bool = false
    
    init(isLit: Bool)
    {
        super.init(imageNamed: (isLit ? "torch_lit" : "torch_unlit"))
        
        self.isLit = isLit
        self.isLitOnce = false
        
        self.physicsBody = SKPhysicsBody(rectangleOf: size)
        self.physicsBody?.categoryBitMask = PhysicsCategory.Torch
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja | PhysicsCategory.Arrow
        self.physicsBody?.collisionBitMask = PhysicsCategory.Torch
    }
    
    override func update()
    {
        if (isLit && !isLitOnce)
        {
            levelManager.switchCounter -= 1
            if (levelManager.switchCounter == 0)
            {
                levelManager.switchAction()
            }
            
            isLitOnce = true
        }
    }
    
    func lightOnFire()
    {
        isLit = true
        texture? = SKTexture(imageNamed: "torch_lit")
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        
        super.init(coder: aDecoder)
    }
}

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
    
    override init(texture: SKTexture!, color: UIColor, size: CGSize) {
        
        
        facingDirection = .down
        super.init(texture: texture, color: color, size: size)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        facingDirection = .down
        super.init(coder: aDecoder)
    }
}

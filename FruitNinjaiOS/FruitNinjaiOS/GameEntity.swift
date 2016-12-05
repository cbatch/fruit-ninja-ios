//
//  GameEntity.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class GameEntity : SKSpriteNode
{
    var imageName : String?
    
    init(imageNamed: String) {
        imageName = imageNamed
        let texture = SKTexture(imageNamed: imageNamed)
        super.init(texture: texture, color: .black, size: texture.size())
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        super.init(coder: aDecoder)
    }
    
    func update()
    {
        
    }
}

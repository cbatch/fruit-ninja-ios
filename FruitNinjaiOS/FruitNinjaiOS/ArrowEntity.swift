//
//  ArrowEntity.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class ArrowEntity : GameEntity
{
    
    var distanceToTravel : Int
    var direction : Direction
    
    init(power: Int, direction: Direction) {
        distanceToTravel = power
        self.direction = direction
        var imageName : String
        
        switch (direction)
        {
        case .up:
            imageName = "arrow_up"
        case .down:
            imageName = "arrow_down"
        case .right:
            imageName = "arrow_right"
        case .left:
            imageName = "arrow_left"
        }
        
        super.init(imageNamed: imageName)
        
        self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: size.width * 0.9, height: size.height * 0.9))
        self.physicsBody?.categoryBitMask = PhysicsCategory.Arrow
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Obstacle | PhysicsCategory.Ninja | PhysicsCategory.Target
        self.physicsBody?.collisionBitMask = PhysicsCategory.Arrow

        self.worthUpdating = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        distanceToTravel = 0
        direction = .right
        
        super.init(coder: aDecoder)
        
        self.worthUpdating = true
    }
    
    override func update()
    {
        if (distanceToTravel > 0)
        {
            switch (direction)
            {
            case .up:
                position.y += gridSize
            case .down:
                position.y -= gridSize
            case .right:
                position.x += gridSize
            case .left:
                position.x -= gridSize
                
            }
            
            distanceToTravel -= 1
        }
    }
}

//
//  GuardEntity.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit
import CoreGraphics

class GuardEntity : GameEntity
{
    var path : [CGPoint] = []
    var movementSpaces : Int = 0
    var pathIndex : Int = 0
    var timer: Int = 45
    
    var vision : GameEntity = GameEntity(imageNamed: "crate")
    
    var direction: Direction = .down {
        didSet {
            switch (direction)
            {
            case .up:
                self.texture? = SKTexture(imageNamed: "samurai_up0")
            case .down:
                self.texture? = SKTexture(imageNamed: "samurai_down0")
            case .left:
                self.texture? = SKTexture(imageNamed: "samurai_left0")
            case .right:
                self.texture? = SKTexture(imageNamed: "samurai_right0")
            }
        }
    }
    init() {
        super.init(imageNamed: "samurai_down0")
        
        self.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: 3 * gridSize, height: 3 * gridSize), center: CGPoint(x: position.x, y: position.y + gridSize))
        self.physicsBody?.categoryBitMask = PhysicsCategory.Guard
        self.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja | PhysicsCategory.Arrow
        self.physicsBody?.collisionBitMask = PhysicsCategory.Guard
    }
    
    func nextMove()
    {
        let ep = CGFloat(0.1)
        
        if position.x - path[pathIndex].x > ep {
            movementSpaces = (Int)((position.x - path[pathIndex].x + ep)/gridSize)
            direction = .left
        }
        else if path[pathIndex].x - position.x > ep {
            movementSpaces = (Int)((path[pathIndex].x - position.x + ep)/gridSize)
            direction = .right
        }
        else if position.y - path[pathIndex].y > ep {
            movementSpaces = (Int)((position.y - path[pathIndex].y + ep)/gridSize)
            direction = .down
        }
        else if path[pathIndex].y - position.y > ep {
            movementSpaces = (Int)((path[pathIndex].y - position.y + ep)/gridSize)
            direction = .up
        }
        
        
        pathIndex += 1
        if pathIndex > path.count - 1 {
            pathIndex = 0
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        super.init(coder: aDecoder)
    }
    
    override func update()
    {
        if (timer <= 0)
        {
            timer = 45
            
            if path.count > 0 {
                
                if movementSpaces <= 0 {
                    nextMove()
                }
                let epsilon = CGFloat(0.2)
                switch (direction)
                {
                case .right:
                    position.x = (CGFloat)((Int)(position.x + gridSize + epsilon))
                case .left:
                    position.x = (CGFloat)((Int)(position.x - gridSize + epsilon))
                case .up:
                    position.y = (CGFloat)((Int)(position.y + gridSize + epsilon))
                case .down:
                    position.y = (CGFloat)((Int)(position.y - gridSize + epsilon))
                }
                
                movementSpaces -= 1
            }
            
        }
        timer -= 1
    }
}

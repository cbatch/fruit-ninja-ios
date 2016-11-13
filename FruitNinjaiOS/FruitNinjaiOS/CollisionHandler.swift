//
//  CollisionHandler.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

struct PhysicsCategory {
    static let None     : UInt32 = 0
    static let All      : UInt32 = UInt32.max
    static let Obstacle : UInt32 = 0b1
    static let Door     : UInt32 = 0b10
    static let Pit      : UInt32 = 0b100
    static let Arrow    : UInt32 = 0b1000
    static let Target   : UInt32 = 0b10000
    static let Guard    : UInt32 = 0b100000
    static let Ninja    : UInt32 = 0b1000000
}


class CollisionHandler
{
    static func handleCollision (firstBody: SKPhysicsBody, secondBody: SKPhysicsBody, contact: SKPhysicsContact)
    {
        /*
         //
         // CHEWY BASED COLLISIONS
         //
         */
        
        // if the collision was with chewy and an obstacle
        if ((firstBody.categoryBitMask & PhysicsCategory.Obstacle != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            
            (secondBody.node as! Chewy).collision = true
        }
        
        // if the collision was with chewy and the next level door
        if ((firstBody.categoryBitMask & PhysicsCategory.Door != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            
            levelManager.nextLevel()
        }
        
        if ((firstBody.categoryBitMask & PhysicsCategory.Guard != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            
            
            if let guard1 = (firstBody.node as? GuardEntity)
            {
                let exclam = GameEntity(imageNamed: "exclamation")
                exclam.position = CGPoint(x: guard1.position.x, y: guard1.position.y + gridSize)
                scene!.addChild(exclam)
                gameEntities.append(exclam)
                // halt movement and face
                guard1.movementSpaces = 0
                guard1.path = []
                
                if let player = (secondBody.node as? Chewy)
                {
                    player.collision = true
                    switch (player.facingDirection)
                    {
                    case .up:
                        guard1.direction = .down
                    case .down:
                        guard1.direction = .up
                    case .left:
                        guard1.direction = .right
                    case .right:
                        guard1.direction = .left
                        
                    }
                }
                
            
                scene!.isPaused = true
                Timer.scheduledTimer(withTimeInterval: TimeInterval.abs(2.0), repeats: false, block: {(Timer: Timer) -> Void in
                    levelManager.resetlevel()
                    scene!.isPaused = false
                })
            }
        }
        
        if ((firstBody.categoryBitMask & PhysicsCategory.Pit != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            
            scene!.isPaused = true
            Timer.scheduledTimer(withTimeInterval: TimeInterval.abs(2.0), repeats: false, block: {(Timer: Timer) -> Void in
                levelManager.resetlevel()
                scene!.isPaused = false
            })
        }
        
        
        
        
        /*
         //
         // ARROW BASED COLLISIONS
         //
        */
        // if the collision was with an obstacle and an arrow
        if ((firstBody.categoryBitMask & PhysicsCategory.Obstacle != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Arrow != 0)) {
            if let arrow = (secondBody.node as? ArrowEntity)
            {
                removeFromGameEntities(sprite: arrow)
            }
        }
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Arrow != 0)) {
            
            if let arrow1 = (firstBody.node as? ArrowEntity)
            {
                removeFromGameEntities(sprite: arrow1)
            }
            if let arrow2 = (secondBody.node as? ArrowEntity)
            {
                removeFromGameEntities(sprite: arrow2)
            }
            
        }
        // if the collision was with an arrow and chewy
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            levelManager.resetlevel()
        }
        // if the collision was with an arrow and target
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Target != 0)) {
            (secondBody.node as! TargetEntity).hit = true
            if let arrow = (firstBody.node as? ArrowEntity) {
                let stubArrow = GameEntity(imageNamed: "arrow_up_half")
                stubArrow.position = arrow.position
                scene!.addChild(stubArrow)
                gameEntities.append(stubArrow)
                removeFromGameEntities(sprite: arrow)
            }
        }
        
        // if the collision was with an arrow and target
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Target != 0)) {
            (secondBody.node as! TargetEntity).hit = true
            if let arrow = (firstBody.node as? ArrowEntity) {
                let stubArrow = GameEntity(imageNamed: "arrow_up_half")
                stubArrow.position = arrow.position
                scene!.addChild(stubArrow)
                gameEntities.append(stubArrow)
                
            }
        }
        
        
        
        
        // if you shoot the guards
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Guard != 0)) {
            
            
            if let guard1 = (secondBody.node as? GuardEntity)
            {
                let exclam = GameEntity(imageNamed: "exclamation")
                exclam.position = CGPoint(x: guard1.position.x, y: guard1.position.y + gridSize)
                scene!.addChild(exclam)
                gameEntities.append(exclam)
                // halt movement and face
                guard1.movementSpaces = 0
                guard1.path = []
                
                if let arrow = (firstBody.node as? ArrowEntity)
                {
                    switch (arrow.direction)
                    {
                    case .up:
                        guard1.direction = .down
                    case .down:
                        guard1.direction = .up
                    case .left:
                        guard1.direction = .right
                    case .right:
                        guard1.direction = .left
                        
                    }
                    arrow.removeFromParent()
                }
                
            }
            
            scene!.isPaused = true
            Timer.scheduledTimer(withTimeInterval: TimeInterval.abs(2.0), repeats: false, block: {(Timer: Timer) -> Void in
                levelManager.resetlevel()
                scene!.isPaused = false
            })
            
        }
    }
}

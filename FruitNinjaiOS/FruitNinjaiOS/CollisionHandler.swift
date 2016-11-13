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
    static let Ninja    : UInt32 = 0b100000
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
            print("door")
            levelManager.nextLevel()
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
        
        
        
        
        // if the collision was with a pit and chewy
        if ((firstBody.categoryBitMask & PhysicsCategory.Pit != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            
            levelManager.resetlevel()
        }
    }
}

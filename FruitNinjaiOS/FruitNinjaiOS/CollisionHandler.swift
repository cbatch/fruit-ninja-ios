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
    static let Pit      : UInt32 = 0b10
    static let Arrow    : UInt32 = 0b100
    static let Target   : UInt32 = 0b1000
    static let Ninja    : UInt32 = 0b10000
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
            print("collision")
            (secondBody.node as! Chewy).collision = true
        }
        
        /*
         //
         // ARROW BASED COLLISIONS
         //
        */
        // if the collision was with an obstacle and an arrow
        if ((firstBody.categoryBitMask & PhysicsCategory.Obstacle != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Arrow != 0)) {
            let arrow = (secondBody.node as! ArrowEntity)
            removeFromGameEntities(sprite: arrow)
        }
        // if the collision was with an arrow and chewy
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            removeFromGameEntities(sprite: chewy)
        }
        // if the collision was with an arrow and target
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Target != 0)) {
            (secondBody.node as! TargetEntity).hit = true
            let arrow = (firstBody.node as! ArrowEntity)
            let stubArrow = GameEntity(imageNamed: "")
            stubArrow.position = arrow.position
            scene!.addChild(stubArrow)
            removeFromGameEntities(sprite: arrow)
        }
        
        
        
        
        // if the collision was with a pit and chewy
        if ((firstBody.categoryBitMask & PhysicsCategory.Pit != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            
            for sprite in gameEntities
            {
                if let pit = (sprite as? PitEntity)
                {
                        pit.toggle = true
                }
            }
            //gameEntities.remove(at: gameEntities.index(of: chewy)!)
        }
    }
}

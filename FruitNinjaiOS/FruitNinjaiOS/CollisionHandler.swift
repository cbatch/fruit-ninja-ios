//
//  CollisionHandler.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class CollisionHandler
{
    static func handleCollision (firstBody: SKPhysicsBody, secondBody: SKPhysicsBody, contact: SKPhysicsContact)
    {
        // if the collision was with chewy and a button
        if ((firstBody.categoryBitMask & PhysicsCategory.Obstacle != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            print("collision")
            (secondBody.node as! Chewy).collision = true
        }
        // if the collision was with chewy and a button
        if ((firstBody.categoryBitMask & PhysicsCategory.Obstacle != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Arrow != 0)) {
            let arrow = (secondBody.node as! ArrowEntity)
            arrow.removeFromParent()
            gameEntities.remove(at: gameEntities.index(of: arrow)!)
        }
        // if the collision was with chewy and a button
        if ((firstBody.categoryBitMask & PhysicsCategory.Arrow != 0) &&
            (secondBody.categoryBitMask & PhysicsCategory.Ninja != 0)) {
            (secondBody.node as! Chewy).removeFromParent()
            gameEntities.remove(at: gameEntities.index(of: chewy)!)
        }
        
    }
}

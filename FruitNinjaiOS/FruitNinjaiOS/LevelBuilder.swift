//
//  LevelBuilder.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class LevelBuilder
{
    
    var levelOne =
    [
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","X","O"," "," "," "," "," "," "," "," ","O","X","|","|"],
        ["|","|","O"," "," "," "," "," "," "," "," "," "," ","O","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," ","X"," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|","O"," "," "," "," "," "," "," "," "," "," ","O","|","|"],
        ["|","|","X","O"," "," "," "," "," "," "," "," ","O","X","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"]
    ]
    
    
    
    
    
    func createLevel(level: [[String]]) -> [SKSpriteNode]
    {
        var levelObjects : [SKSpriteNode] = []
        for row in 0...level.count - 1
        {
            for column in 0...level[0].count - 1
            {
                let xCoord = CGFloat(column) * gridSize
                let yCoord = CGFloat(level.count - row - 1) * gridSize
                var levelObject : SKSpriteNode? = nil
                switch (level[row][column])
                {
                    case "O":
                        levelObject = SKSpriteNode(imageNamed: "barrel")
                        levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                        levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                        levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                        levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.All
                    case "X":
                        levelObject = SKSpriteNode(imageNamed: "crate")
                        levelObject!.physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: gridSize * 0.9, height: gridSize * 0.9))
                        levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                        levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                        levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.All
                    default: break
                }
                if let sprite = levelObject {
                    sprite.position = CGPoint(x: xCoord, y: yCoord)
                    sprite.physicsBody?.usesPreciseCollisionDetection = true
                    sprite.physicsBody?.isDynamic = false
                    levelObjects.append(sprite)
                }
            }
        }
        
        return levelObjects
    }
}

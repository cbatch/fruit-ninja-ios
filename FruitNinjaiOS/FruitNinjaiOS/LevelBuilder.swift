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
        ["|","|","O"," "," "," "," "," "," "," "," "," "," ","O","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","t","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","p","p","P","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P"," "," "," "," ","P","P","P","P","|","|"],
        ["|","|","P","P","P","P"," "," "," "," ","P","P","P","P","|","|"],
        ["|","|","P","P","P","P"," "," "," "," ","P","P","P","P","|","|"],
        ["|","|","P","P","P","P"," "," "," "," ","P","P","P","P","|","|"],
        ["|","|","P","P","P","P"," "," "," "," ","P","P","P","P","|","|"],
        ["|","|","P","P","P","P"," "," "," "," ","P","P","P","P","|","|"],
        ["|","|","P","P","P","P"," "," "," "," ","P","P","P","P","|","|"],
        ["|","|","X","X","X","X","r"," "," "," ","X","X","X","X","|","|"],
        ["|","|","X","X","X","X"," "," "," "," ","X","X","X","X","|","|"],
        ["|","|","X","X","X","X"," "," "," ","l","X","X","X","X","|","|"],
        ["|","|","X","X","X","X"," "," "," "," ","X","X","X","X","|","|"],
        ["|","|","X","X","X","X","r"," "," "," ","X","X","X","X","|","|"],
        ["|","|","O"," "," "," "," "," "," "," "," "," "," ","O","|","|"],
        ["|","|","X"," "," "," "," "," "," "," "," "," ","O","X","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"]
    ]
    
    
    
    
    
    func createLevel(level: [[String]]) -> [GameEntity]
    {
        var levelObjects : [GameEntity] = []
        for row in 0...level.count - 1
        {
            for column in 0...level[0].count - 1
            {
                let xCoord = CGFloat(column) * gridSize
                let yCoord = CGFloat(level.count - row - 1) * gridSize
                var levelObject : GameEntity? = nil
                switch (level[row][column])
                {
                case "|":
                    levelObject = GameEntity(imageNamed: "crate")
                    levelObject?.alpha = 0.0
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "-":
                    levelObject = GameEntity(imageNamed: "crate")
                    levelObject?.alpha = 0.0
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "l":
                    levelObject = ArrowTrapEntity(direction: .left)
                case "O":
                    levelObject = GameEntity(imageNamed: "barrel")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "p":
                    levelObject = PitEntity()
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit

                case "P":
                    levelObject = GameEntity(imageNamed: "pit")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "r":
                    levelObject = ArrowTrapEntity(direction: .right)
                case "t":
                    levelObject = TargetEntity()
                case "X":
                    levelObject = GameEntity(imageNamed: "crate")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                    
                default: break
                    
                }
                if let sprite = levelObject {
                    sprite.position = CGPoint(x: xCoord, y: yCoord)
                    sprite.physicsBody?.isDynamic = false
                    levelObjects.append(sprite)
                }
            }
        }
        
        return levelObjects
    }
}

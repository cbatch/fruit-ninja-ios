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
        ["|","|","-","-","-","-","-","D","-","-","-","-","-","-","|","|"],
        ["|","|","X","O"," "," "," "," "," "," "," "," "," ","X","|","|"],
        ["|","|","O"," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|","P","P","t","P","P","p","p","P","P","t","P","P","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|","P","P","P","P","P","p","p","P","P","P","P","P","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|","<","~","~",">"," "," "," "," ","<","~","~",">","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","l",".",".","]","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","[",".",".","r"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","l",".",".","]","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","[",".",".","r"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","l",".",".","]","|","|"],
        ["|","|","[",".",".","]"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","[",".",".","r"," "," "," "," ","[",".",".","]","|","|"],
        ["|","|","(","_","_",")"," "," "," "," ","(","_","_",")","|","|"],
        ["|","|","O"," "," "," "," "," "," "," "," "," "," ","O","|","|"],
        ["|","|","X"," "," "," "," ","C"," "," "," "," ","O","X","|","|"],
        ["|","|","-","-","-","-","-","d","-","-","-","-","-","-","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"]
    ]
    
    var levelTwo = [[""]]
    var levelThree = [[""]]
    
    
    
    
    func createLevel(level: [[String]]) -> [GameEntity]
    {
        var levelObjects : [GameEntity] = []
        for row in 0...level.count - 1
        {
            for column in 0...level[0].count - 1
            {
                let xCoord = CGFloat(column) * gridSize
                let yCoord = CGFloat(level.count - row - 1) * gridSize
                var yOffset = CGFloat(0.0)
                var levelObject : GameEntity? = nil
                switch (level[row][column])
                {
                case "]":
                    levelObject = GameEntity(imageNamed: "wall_right")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "[":
                    levelObject = GameEntity(imageNamed: "wall_left")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "_":
                    levelObject = GameEntity(imageNamed: "wall_down")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "~":
                    levelObject = GameEntity(imageNamed: "wall_up")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case ")":
                    levelObject = GameEntity(imageNamed: "wall_corner_downright")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "(":
                    levelObject = GameEntity(imageNamed: "wall_corner_downleft")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case ">":
                    levelObject = GameEntity(imageNamed: "wall_corner_upright")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "<":
                    levelObject = GameEntity(imageNamed: "wall_corner_upleft")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case ".":
                    levelObject = GameEntity(imageNamed: "blank")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
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
                case "C":
                    chewy = Chewy()
                    chewy.position = CGPoint(x: xCoord, y: yCoord)
                    gameEntities.append(chewy)
                    scene!.addChild(chewy)
                case "d":
                    levelObject = GameEntity(imageNamed: "door_up")
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                    yOffset = CGFloat(-1 * levelObject!.size.height / 4)
                case "D":
                    levelObject = GameEntity(imageNamed: "door_down")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Door
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Door
                    yOffset = CGFloat(levelObject!.size.height / 4)
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
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
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
                    sprite.position = CGPoint(x: xCoord, y: yCoord + yOffset)
                    sprite.physicsBody?.isDynamic = false
                    levelObjects.append(sprite)
                }
            }
        }
        
        return levelObjects
    }
}

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
        ["|","|","1","1","1","1","5","p","p","6","1","1","1","1","|","|"],
        ["|","|",".",".",".",".","3","p","p","4",".",".",".",".","|","|"],
        ["|","|",".",".",".",".","3","p","p","4",".",".",".",".","|","|"],
        ["|","|",".",".",".",".","3","p","p","4",".",".",".",".","|","|"],
        ["|","|",".",".",".",".","3","p","p","4",".",".",".",".","|","|"],
        ["|","|",".",".","t",".","3","p","p","4",".","t",".",".","|","|"],
        ["|","|",".",".","1",".","3","p","p","4",".","1",".",".","|","|"],
        ["|","|","2","2","2","2","7","p","p","8","2","2","2","2","|","|"],
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
    
    var levelTwo =
    [
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","-","D","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," ","<","~","~",">"," "," ","<","~","~",">"," ","|","|"],
        ["|","|"," ","[",".",".","]"," "," ","[",".",".","]"," ","|","|"],
        ["|","|"," ","(","_","_",")"," "," ","(","_","_",")"," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," ","<","~","~",">"," "," ","<","~","~",">"," ","|","|"],
        ["|","|"," ","[",".",".","]"," "," ","[",".",".","]"," ","|","|"],
        ["|","|"," ","(","_","_",")"," "," ","(","_","_",")"," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
        ["|","|","<","~","~","~","~","~","~","~",">"," "," "," ","|","|"],
        ["|","|","(","_","_","_","_","_","_","/","]"," "," "," ","|","|"],
        ["|","|","O"," "," "," "," "," "," ","[","]"," "," "," ","|","|"],
        ["|","|"," "," "," ","<",">"," "," ","[","]"," "," "," ","|","|"],
        ["|","|"," "," "," ","[","]"," "," ","[","]"," "," "," ","|","|"],
        ["|","|"," "," "," ","[","]"," "," ","[","]"," "," "," ","|","|"],
        ["|","|"," ","X"," ","[","]"," "," ","[","]"," "," "," ","|","|"],
        ["|","|"," "," "," ","[","]"," "," ","(",")"," "," "," ","|","|"],
        ["|","|"," "," "," ","[","]"," "," "," "," "," "," ","O","|","|"],
        ["|","|"," "," "," ","[","]"," "," "," "," ","<","~",">","|","|"],
        ["|","|"," "," "," ","[","]"," "," "," "," ","(","_",")","|","|"],
        ["|","|"," "," "," ","[","]","O"," "," "," ","O"," "," ","|","|"],
        ["|","|"," ","X"," ","[","}","~","~","~",">","X",""," ","|","|"],
        ["|","|"," "," "," ","[","\\","_","_","/","]","X",""," ","|","|"],
        ["|","|"," "," "," ","[","]"," ","X","[","}","~",">"," ","|","|"],
        ["|","|"," "," "," ","(",")"," "," ","(","_","_",")"," ","|","|"],
        ["|","|"," "," "," "," "," ","C"," "," "," "," "," "," ","|","|"],
        ["|","|","-","-","-","-","-","d","-","-","-","-","-","-","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"]
    ]
    var levelThree =
    [
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","-","-","D","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","X","f","p","f"," ","f"," ","<",">","f"," "," ","|","|"],
        ["|","|","X","p","p","p"," "," "," ","[","]"," "," "," ","|","|"],
        ["|","|","O"," "," ","<",">"," "," ","[","]"," "," "," ","|","|"],
        ["|","|"," "," "," ","[","]"," "," ","[","]"," "," "," ","|","|"],
        ["|","|","X"," "," ","[","]"," "," ","[","]"," "," "," ","|","|"],
        ["|","|","X","X"," ","(",")","f"," ","(",")"," "," "," ","|","|"],
        ["|","|","<",">"," "," "," "," "," "," "," ",".","<",">","|","|"],
        ["|","|","[","r","f"," "," "," "," "," "," ","f","(",")","|","|"],
        ["|","|","[","]","1","<",">"," ","<",">"," "," "," ","X","|","|"],
        ["|","|","[","]",".","[","]"," ","[","}","~",">"," ","O","|","|"],
        ["|","|","(",")",".","(",")"," ","[",".",".","]"," "," ","|","|"],
        ["|","|"," "," "," "," "," "," ","(","_","_",")"," ","O","|","|"],
        ["|","|"," ","X"," ","O","X"," ","X"," "," "," "," ","X","|","|"],
        ["|","|"," "," ","f","6","5","f"," "," ","<","~","u",">","|","|"],
        ["|","|","O"," "," ","4","3"," "," "," ","(","_","/","]","|","|"],
        ["|","|","X","O","O","4","3"," "," "," "," "," ","[","]","|","|"],
        ["|","|","6","1","1",".",".","1","1","1","5"," ","l","]","|","|"],
        ["|","|","4",".",".",".",".","2",".",".","7"," ","[","]","|","|"],
        ["|","|","8","2","2","2","2","f","4","3","f"," ","l","]","|","|"],
        ["|","|"," "," "," "," "," "," ","4",".","5"," ","[","]","|","|"],
        ["|","|"," ","6","1","1","5"," ","4",".","3"," ","l","]","|","|"],
        ["|","|"," ","4",".",".","3"," ","4",".","5"," ","[","]","|","|"],
        ["|","|"," ","8",".",".","3"," ","4",".","7"," ","l","]","|","|"],
        ["|","|"," "," ","4","F","3"," ","4","3","f"," ","[","]","|","|"],
        ["|","|","6","1",".","1","3"," ","4",".","5"," ","l","]","|","|"],
        ["|","|","8","2","2","2","7"," ","4",".","7"," ","[","]","|","|"],
        ["|","|"," "," "," "," "," "," ","8","7"," "," ","l","]","|","|"],
        ["|","|"," ","C"," "," "," "," "," "," "," "," ","(",")","|","|"],
        ["|","|","-","d","-","-","-","-","-","-","-","-","-","-","|","|"],
        ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"]
    ]
    
    var finalStage =
        [
            ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
            ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," ",".","."," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," ","F","f","f","f","f","f","f","F"," "," ","|","|"],
            ["|","|"," "," ","f"," "," "," "," "," "," ","f"," "," ","|","|"],
            ["|","|"," "," ","f"," "," "," "," "," "," ","f"," "," ","|","|"],
            ["|","|"," "," ","f"," "," "," "," "," "," ","f"," "," ","|","|"],
            ["|","|",".",".","f"," "," "," "," "," "," ","f",".",".","|","|"],
            ["|","|",".",".","F","f","F"," "," ","F","f","F",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","f"," "," ","f",".",".",".",".","|","|"],
            ["|","|",".",".",".",".","F"," "," ","F",".",".",".",".","|","|"],
            ["|","|",".",".","."," "," "," "," "," "," ",".",".",".","|","|"],
            ["|","|",".",".","."," "," "," "," "," "," ",".",".",".","|","|"],
            ["|","|",".",".","."," "," "," "," "," "," ",".",".",".","|","|"],
            ["|","|",".",".","."," "," "," "," "," "," ",".",".",".","|","|"],
            ["|","|",".",".","."," "," "," "," "," "," ",".",".",".","|","|"],
            ["|","|","-","-","-","-","-","d","-","-","-","-","-","-","|","|"],
            ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"]
    ]
    
    var ianDont =
        [
            ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
            ["|","|","-","-","-","-","-","-","-","-","-","-","-","-","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
            ["|","|"," "," "," "," "," "," "," "," ",".","."," "," ","|","|"],
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
            ["|","|"," "," "," "," "," "," "," "," "," "," "," "," ","|","|"],
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
                case "/":
                    levelObject = GameEntity(imageNamed: "wall_joint_downleft")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "\\":
                    levelObject = GameEntity(imageNamed: "wall_joint_downright")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "{":
                    levelObject = GameEntity(imageNamed: "wall_joint_upleft")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "}":
                    levelObject = GameEntity(imageNamed: "wall_joint_upright")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case ".":
                    levelObject = GameEntity(imageNamed: "blank")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
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
                case "1":
                    levelObject = GameEntity(imageNamed: "pit_down")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "2":
                    levelObject = GameEntity(imageNamed: "pit_up")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "3":
                    levelObject = GameEntity(imageNamed: "pit_left")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "4":
                    levelObject = GameEntity(imageNamed: "pit_right")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "5":
                    levelObject = GameEntity(imageNamed: "pit_joint_downleft")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "6":
                    levelObject = GameEntity(imageNamed: "pit_joint_downright")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "7":
                    levelObject = GameEntity(imageNamed: "pit_joint_upleft")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "8":
                    levelObject = GameEntity(imageNamed: "pit_joint_upright")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "C":
                    chewy = Chewy()
                    chewy.position = CGPoint(x: xCoord, y: yCoord)
                    gameEntities.append(chewy)
                    scene!.addChild(chewy)
                case "d":
                    levelObject = GameEntity(imageNamed: "door_up")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
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
                case "f":
                    levelObject = TorchEntity(isLit: false)
                case "F":
                    levelObject = TorchEntity(isLit: true)
                case "l":
                    levelObject = ArrowTrapEntity(direction: .left)
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "O":
                    levelObject = GameEntity(imageNamed: "barrel")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "p":
                    levelObject = PitEntity(fileNamed: "floor_lowered")
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Pit
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Pit
                case "r":
                    levelObject = ArrowTrapEntity(direction: .right)
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
                case "t":
                    levelObject = TargetEntity()
                case "u":
                    levelObject = ArrowTrapEntity(direction: .up)
                    levelObject!.physicsBody = SKPhysicsBody(rectangleOf: levelObject!.size)
                    levelObject!.physicsBody?.categoryBitMask = PhysicsCategory.Obstacle
                    levelObject!.physicsBody?.contactTestBitMask = PhysicsCategory.Ninja
                    levelObject!.physicsBody?.collisionBitMask = PhysicsCategory.Obstacle
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

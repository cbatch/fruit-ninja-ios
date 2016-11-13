//
//  Globals.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/11/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

// Our Global Player
var chewy : Chewy = Chewy()
// Game Entities
var gameEntities : [GameEntity] = []
// Background
var background : SKSpriteNode = SKSpriteNode(imageNamed: "background")

let gridSize : CGFloat = 32.0

// The Running Game Scene
var scene : GameScene?

// I'm sorry
func spawnArrow(position: CGPoint, direction: Direction)
{
    let arrow = ArrowEntity(power: 5, direction: direction)
    switch (direction)
    {
    case .up:
        arrow.position = CGPoint(x: position.x, y: position.y + gridSize)
    case .down:
        arrow.position = CGPoint(x: position.x, y: position.y - gridSize)
    case .right:
        arrow.position = CGPoint(x: position.x + gridSize, y: position.y)
    case .left:
        arrow.position = CGPoint(x: position.x - gridSize, y: position.y)
    }
    
    scene!.addChild(arrow)
    gameEntities.append(arrow)
}

// sorry not sorry
func removeFromGameEntities(sprite: GameEntity)
{
    sprite.removeFromParent()
    gameEntities.remove(at: gameEntities.index(of: sprite)!)
}

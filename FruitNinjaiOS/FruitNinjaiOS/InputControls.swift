//
//  InputControls.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/11/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

let shorterSide : CGFloat = 64.0
let longerSide : CGFloat = (1.5 * 64.0)
let buttonYCenter : CGFloat = 128.0

class InputControls {
    
    var leftMovementButton : SKSpriteNode
    var rightMovementButton : SKSpriteNode
    var upMovementButton : SKSpriteNode
    var downMovementButton : SKSpriteNode
    var arrowButton : SKSpriteNode
    
    
    init (screenSize: CGSize) {
        // set up the buttons color and size
        leftMovementButton = SKSpriteNode(imageNamed: "buttonLeft")
        leftMovementButton.zPosition = 1
        rightMovementButton = SKSpriteNode(imageNamed: "buttonRight")
        rightMovementButton.zPosition = 1
        upMovementButton = SKSpriteNode(imageNamed: "buttonUp")
        upMovementButton.zPosition = 1
        downMovementButton = SKSpriteNode(imageNamed: "buttonDown")
        downMovementButton.zPosition = 1
        arrowButton = SKSpriteNode(imageNamed: "buttonArrow")
        arrowButton.zPosition = 1
        
        // constant to use to make relative to bottom of screen
        let toBottom = -0.5 * screenSize.height
        
        // set the position of the input buttons
        leftMovementButton.position = CGPoint(x: -1 * longerSide, y: toBottom + buttonYCenter)
        rightMovementButton.position = CGPoint(x: longerSide, y: toBottom + buttonYCenter)
        upMovementButton.position = CGPoint(x: 0.0, y: toBottom + buttonYCenter + shorterSide)
        downMovementButton.position = CGPoint(x: 0.0, y: toBottom + buttonYCenter - shorterSide)
        arrowButton.position = CGPoint(x: 0.25 * screenSize.width + 16, y: toBottom + buttonYCenter + longerSide)
    }
    
    
    func getInputControls() -> [SKSpriteNode] {
        return [leftMovementButton, rightMovementButton, upMovementButton, downMovementButton, arrowButton]
    }
    
    
    func respondToTouchEvent(_ touches: Set<UITouch>, scene : SKScene) {
        
        for touch : AnyObject in touches {
            let touchLocation = touch.location(in: scene.camera!)
            
            chewy.lastPosition = chewy.position
            
            if leftMovementButton.contains(touchLocation) {
                chewy.position.x -= gridSize
                chewy.facingDirection = .left
            }
            else if rightMovementButton.contains(touchLocation) {
                chewy.position.x += gridSize
                chewy.facingDirection = .right
            }
            else if upMovementButton.contains(touchLocation) {
                chewy.position.y += gridSize
                chewy.facingDirection = .up
            }
            else if downMovementButton.contains(touchLocation) {
                chewy.position.y -= gridSize
                chewy.facingDirection = .down
            }
            else if arrowButton.contains(touchLocation) {
                chewy.shootArrow = true
            }
        }
    }
}

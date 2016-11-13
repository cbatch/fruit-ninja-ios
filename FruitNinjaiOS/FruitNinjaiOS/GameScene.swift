//
//  GameScene.swift
//  FruitNinjaiOS
//
//  Created by Ian Meeder on 11/11/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit
import GameplayKit


class GameScene: SKScene, SKPhysicsContactDelegate {
    
    let cam = SKCameraNode()
    var inputControls : InputControls?
    var levelBuilder : LevelBuilder = LevelBuilder()
    
    override func didMove(to view: SKView) {
        // set the camera to be our camera node
        self.camera = cam
        let zoomInAction = SKAction.scale(to: 0.75, duration: 1)
        cam.run(zoomInAction)
        // set us as the contact delegate and realize gravity is a lie put on by the jedi
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        physicsWorld.contactDelegate = self
        
        // sets the general background color to black and initializes the background image
        backgroundColor = .black
        background.position = CGPoint(x: 7 * gridSize + gridSize * 0.5, y: 15 * gridSize + gridSize * 0.5)
        addChild(background)
        
        
        // actually create the input controls
        inputControls = InputControls(screenSize: size)
        // add buttons to the scene
        cam.addChild((inputControls?.leftMovementButton)!)
        cam.addChild((inputControls?.rightMovementButton)!)
        cam.addChild((inputControls?.upMovementButton)!)
        cam.addChild((inputControls?.downMovementButton)!)
        
        addChild(cam)
        
        chewy.position = CGPoint(x: 8 * gridSize, y: 3 * gridSize)
        gameEntities.append(chewy)
        addChild(chewy)
        
        
        for sprite in levelBuilder.createLevel(level: levelBuilder.levelOne)
        {
            addChild(sprite)
            if (sprite.worthUpdating) {
                gameEntities.append(sprite)
            }
        }
        
        
    }
    
    // this is where the collision code is run
    func didBegin (_ contact: SKPhysicsContact) {
        var firstBody: SKPhysicsBody
        var secondBody: SKPhysicsBody
        if contact.bodyA.categoryBitMask < contact.bodyB.categoryBitMask
        {
            firstBody = contact.bodyA
            secondBody = contact.bodyB
        }
        else
        {
            firstBody = contact.bodyB
            secondBody = contact.bodyA
        }
        
        //contact.contactPoint
        CollisionHandler.handleCollision(firstBody: firstBody, secondBody: secondBody, contact: contact)
    }
    

    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        inputControls!.respondToTouchEvent(touches, scene: self)
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        //
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func didFinishUpdate() {
        for sprite in gameEntities {
            sprite.update()
        }
        cam.position = CGPoint(x: chewy.position.x, y: chewy.position.y - 2 * gridSize)
    }
}

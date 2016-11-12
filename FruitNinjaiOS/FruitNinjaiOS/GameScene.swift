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
    
    
    override func didMove(to view: SKView) {
        // set the camera to be our camera node
        self.camera = cam
        
        
        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
        physicsWorld.contactDelegate = self
        
        // sets the general background color to black and initializes the background image
        backgroundColor = .black
        background.position = CGPoint(x: size.width * 0.5 - gridSize * 0.5, y: size.height * 0.5 - gridSize * 0.5)
        addChild(background)
        
        
        
        
        

        
        inputControls = InputControls(screenSize: size)
        // add buttons to the scene
        cam.addChild((inputControls?.leftMovementButton)!)
        cam.addChild((inputControls?.rightMovementButton)!)
        cam.addChild((inputControls?.upMovementButton)!)
        cam.addChild((inputControls?.downMovementButton)!)
        
        addChild(cam)
        
        chewy.position = CGPoint(x: size.width * 0.5, y: size.height * 0.5)
        addChild(chewy)
        
    }
    
    // this is where the collision code is run
    func didBegin (_ contact: SKPhysicsContact) {
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        inputControls!.respondToTouchEvent(touches, scene: self)
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        cam.position = CGPoint(x: chewy.position.x, y: chewy.position.y - 2 * gridSize)// keeps the camera focused on the player
    }
}

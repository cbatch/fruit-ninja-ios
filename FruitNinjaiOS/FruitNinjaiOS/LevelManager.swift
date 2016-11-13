//
//  LevelManager.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class LevelManager
{
    var switchCounter : Int = 0
    var level : Int = 0
    var switches : [SwitchEntity] = []
    var switchAction : () -> Void
    
    init ()
    {
        switchAction = LevelManager.levelOneSwitch
    }
    
    func nextLevel()
    {
        for sprite in gameEntities {
            removeFromGameEntities(sprite: sprite)
        }
        switches = []
        
        var nextLevelSprites : [GameEntity] = []
        
        switch (level)
        {
        case (0):
            nextLevelSprites = levelBuilder.createLevel(level: levelBuilder.levelOne)
            switchCounter = 2
            switchAction = LevelManager.levelOneSwitch
        case (1):
             nextLevelSprites = levelBuilder.createLevel(level: levelBuilder.levelTwo)
             let guard1 = guardBuilder.createGuard(level: guardBuilder.guard1)
             let guard2 = guardBuilder.createGuard(level: guardBuilder.guard2)
             let guard3 = guardBuilder.createGuard(level: guardBuilder.guard3)
             let guard4 = guardBuilder.createGuard(level: guardBuilder.guard4)
             let guard5 = guardBuilder.createGuard(level: guardBuilder.guard5)
             scene!.addChild(guard1)
             scene!.addChild(guard2)
             scene!.addChild(guard3)
             scene!.addChild(guard4)
             scene!.addChild(guard5)
             gameEntities.append(guard1)
             gameEntities.append(guard2)
             gameEntities.append(guard3)
             gameEntities.append(guard4)
             gameEntities.append(guard5)
        case(2):
            nextLevelSprites = levelBuilder.createLevel(level: levelBuilder.levelThree)
        case(3):
            nextLevelSprites = levelBuilder.createLevel(level: levelBuilder.finalStage)
            switchAction = LevelManager.finalLevelSwitch
            switchCounter = 1
        default: break
        }
        level += 1
        
        
        for sprite in nextLevelSprites
        {
            
            scene!.addChild(sprite)
            gameEntities.append(sprite)
            
            if let switcheroo = sprite as? SwitchEntity {
                switches.append(switcheroo)
            }
        }
    }
    
    
    static func levelOneSwitch()
    {
        for sprite in gameEntities
        {
            if let pit = (sprite as? PitEntity)
            {
                pit.toggle = true
            }
        }
    }
    
    
    static func finalLevelSwitch()
    {
        for sprite in gameEntities
        {
            if let torch = (sprite as? TorchEntity)
            {
                torch.lightOnFire()
            }
        }
    }
    
    func resetlevel()
    {
        level -= 1
        nextLevel()
    }
    
    
}

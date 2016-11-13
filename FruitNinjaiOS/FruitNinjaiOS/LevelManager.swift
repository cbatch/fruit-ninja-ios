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
    //var switches : [SwitchEntity] = []
    
    init ()
    {
        
    }
    
    func nextLevel()
    {
        for sprite in gameEntities {
            removeFromGameEntities(sprite: sprite)
        }
        
        var nextLevelSprites : [GameEntity] = []
        
        switch (level)
        {
        case (0):
            nextLevelSprites = levelBuilder.createLevel(level: levelBuilder.levelOne)
        case (1):
             nextLevelSprites = levelBuilder.createLevel(level: levelBuilder.levelOne)
        case(2):
            nextLevelSprites = levelBuilder.createLevel(level: levelBuilder.levelOne)
        default: break
        }
        level += 1
        
        
        for sprite in nextLevelSprites
        {
            scene!.addChild(sprite)
            gameEntities.append(sprite)
        }
    }
    
    
    func resetlevel()
    {
        level -= 1
        nextLevel()
    }
    
    
}

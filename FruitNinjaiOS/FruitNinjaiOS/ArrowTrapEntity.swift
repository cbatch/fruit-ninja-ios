//
//  ArrowTrapEntity.swift
//  FruitNinjaiOS
//
//  Created by Connor Batch on 11/12/16.
//  Copyright © 2016 Connor Batch. All rights reserved.
//

import SpriteKit

class ArrowTrapEntity : GameEntity
{
    var direction : Direction
    var timer : Int = 120
    
    init(direction: Direction) {
        self.direction = direction
        
        var imageName : String
        
        switch (direction)
        {
        case .up:
            imageName = "arrow"
        case .down:
            imageName = "arrow_down"
        case .right:
            imageName = "arrow_right"
        case .left:
            imageName = "arrow_left"
        }
        
        super.init(imageNamed: imageName)
        
        self.worthUpdating = true
    }
    
    override func update()
    {
        if (timer == 0)
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
            timer = 120;
        }
        timer -= 1;
    }
    
    required init?(coder aDecoder: NSCoder) {
        // Decoding length here would be nice...
        direction = .right
        
        super.init(coder: aDecoder)
        
        worthUpdating = true
    }
}

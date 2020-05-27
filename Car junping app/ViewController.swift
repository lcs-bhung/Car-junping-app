//
//  ViewController.swift
//  Car junping app
//
//  Created by Branton Hung on 2020-05-25.
//  Copyright © 2020 Branton Hung. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
   
    
    
    // Create the variables required for the app, these variables would then be changed by the user
    var speed: Double = 10
    var acceleration: Double = 5
    var rampAngle: Double = 30.0
    var gravity: Double = 9.8
    var rampHeight: Double = 10
    var distanceToRamp: Double = 30
   
    var verticalVelocity : Double = 0
    var heightGained: Double = 0
    var maxHeight: Double = 0
    var timeFromRampToMaxHeight: Double = 0
    var timeFromMaxHeightToGround: Double = 0
    var timeTaken: Double = 0
    var xVelocity: Double = 0
    var distance: Double = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            speed = sqrt(2*acceleration * distanceToRamp)
        //Find vertical velocity of the car
        verticalVelocity =  speed * sin(rampAngle)
        //Find how high the car goes, this will also be used for the animation
        heightGained = (0-sqrt(verticalVelocity))/(2*gravity)
        maxHeight = rampHeight + heightGained

        //Find how long the car is in the air for
        //Time taken from ramp to max height
        timeFromRampToMaxHeight = (0-verticalVelocity)/gravity
        //Time taken from max height to the ground
        timeFromMaxHeightToGround = sqrt((2*maxHeight)/gravity)
        //Total time taken
        timeTaken = timeFromRampToMaxHeight + timeFromMaxHeightToGround


        //Get x velocity
        xVelocity = speed*cos(rampAngle)


        //Get distance traveled
        distance = xVelocity * timeTaken

    }
    
    //Draw the background (static shapes)
    
    
    
    
    
    //Import the sprites required
    
    
    
    
    
    
    
    //If the user chooses to use a car accelerating from a stnadstill, we must use this to change determine the final speed of the car



  


}

//Impliment these numbers to how the sprites will move.



//Formula of the trajectory is required



//Animate the sprites to move according to the inputs







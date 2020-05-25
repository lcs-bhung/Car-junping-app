//
//  ViewController.swift
//  Car junping app
//
//  Created by Branton Hung on 2020-05-25.
//  Copyright © 2020 Branton Hung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Create the variables required for the app, these variables would then be changed by the user
    var speed: Double = 10
    var acceleration: Double = 5
    var rampAngle: Double = 30.0
    var gravity: Double = 9.8
    var rampHeight: Double = 10
    var distanceToRamp: Double = 30
    //If the user chooses to use a car accelerating from a stnadstill, we must use this to change determine the final speed of the car

    speed = sqrt(2*acceleration * distanceToRamp)

    //Find vertical velocity of the car
    var verticalVelocity =  speed * sin(rampAngle)

    //Find how high the car goes, this will also be used for the animation
    let heightGained = (0-sqrt(verticalVelocity))/(2*gravity)
    let maxHeight = rampHeight + heightGained

    //Find how long the car is in the air for
    //Time taken from ramp to max height
    let timeFromRampToMaxHeight = (0-verticalVelocity)/gravity
    //Time taken from max height to the ground
    let timeFromMaxHeightToGround = sqrt((2*maxHeight)/gravity)
    //Total time taken
    let timeTaken = timeFromRampToMaxHeight + timeFromMaxHeightToGround


    //Get x velocity
    let xVelocity = speed*cos(rampAngle)


    //Get distance traveled
    let distance = xVelocity * timeTaken


}


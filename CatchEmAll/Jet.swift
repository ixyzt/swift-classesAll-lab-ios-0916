//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    // override climb = climbs at 1/5th max altitude
    override func climb() {
        if inFlight {
            altitude += maxAltitude / 5
            super.decelerate()
        }
        if altitude > maxAltitude {
            altitude = maxAltitude
        }
    }
    
    // override dive = dives at 1/5th max altitude
    override func dive() {
        if altitude > 0 {
            altitude -= maxAltitude / 5
            super.accelerate()
        }
        if altitude < 0 {
            altitude = 0
        }
    }
    
    // afterburner = if inFlight and speed is at maxSpeed, then set speeed to 2 * maxSpeed
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = 2 * maxSpeed
        }
    }
    
}


//
//  web.swift
//  
//
//  Created by William Snook on 8/28/17.
//
//

import Foundation
import SwiftyGPIO

public class GPIOweb {
    
    let gpios: [GPIOName: GPIO]
    let gp2: GPIO
    let gp3: GPIO
    
    init() {
        self.gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
        gp2 = gpios[.P2]!
        gp2.direction = .OUT
        gp3 = gpios[.P3]!
        gp3.direction = .OUT
    }
    
    func on2() {
        gp2.value = 1
	    print( "Set P2 on" )
    }
    
    func off2() {
        gp2.value = 0
	    print( "Set P2 off" )
    }
    
    func on3() {
        gp3.value = 1
	    print( "Set P3 on" )
    }
    
    func off3() {
        gp3.value = 0
	    print( "Set P3 off" )
    }
    
}

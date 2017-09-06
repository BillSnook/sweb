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
    let gp1: GPIO
    let gp2: GPIO
    
    init() {
        self.gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
        gp1 = gpios[.P2]!
        gp1.direction = .OUT
        gp2 = gpios[.P3]!
        gp2.direction = .OUT
    }
    
    func on1() {
        gp1.value = 1
    }
    
    func off1() {
        gp1.value = 0
    }
    
    func on2() {
        gp2.value = 1
    }
    
    func off2() {
        gp2.value = 0
    }
    
}

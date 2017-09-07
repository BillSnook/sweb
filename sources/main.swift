//
//  main.swift
//
//
//  Created by William Snook on 8/28/17.
//
//

//#if os(Linux)
//import Glibc
//#else
//import Darwin.c
//#endif

import Swifter
import Foundation


let server = HttpServer()
let gpio = GPIOweb()

//server["/hello"] = {(HttpRequest) -> HttpResponse in gpio.hello();return .ok(.html("You asked for a hello")) }
server["/on2"] = { (HttpRequest) -> HttpResponse in gpio.on2();return .ok(.html("You asked for P2 to be on")) }
server["/off2"] = { (HttpRequest) -> HttpResponse in gpio.off2();return .ok(.html("You asked for P2 to be off")) }
server["/on3"] = { (HttpRequest) -> HttpResponse in gpio.on3();return .ok(.html("You asked for P3 to be on")) }
server["/off3"] = { (HttpRequest) -> HttpResponse in gpio.off3();return .ok(.html("You asked for P3 to be off")) }

do {
    try server.start()
    print( "Server started" )
} catch {
    print( "Server start failed" )
}

while true {
    usleep(100000)
}


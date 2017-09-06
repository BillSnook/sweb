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
server["/on1"] = { (HttpRequest) -> HttpResponse in gpio.on1();return .ok(.html("You asked for 1 to be on")) }
server["/off1"] = { (HttpRequest) -> HttpResponse in gpio.off1();return .ok(.html("You asked for 1 to be off")) }
server["/on2"] = { (HttpRequest) -> HttpResponse in gpio.on2();return .ok(.html("You asked for 2 to be on")) }
server["/off2"] = { (HttpRequest) -> HttpResponse in gpio.off2();return .ok(.html("You asked for 2 to be off")) }

do {
    try server.start()
    print( "Server started" )
} catch {
    print( "Server start failed" )
}

while true {
    usleep(100000)
}


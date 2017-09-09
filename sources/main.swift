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


//let server = HttpServer()
let server = demoServer( "/home/bill/swift/sweb/sources/" )

let gpio = GPIOweb()

server["/startup"] = {(HttpRequest) -> HttpResponse in print( "Remote Switch sensor connected" ); return .ok(.text("Switch sensor enabled")) }
server["/on17"] = { (HttpRequest) -> HttpResponse in gpio.on2();return .ok(.text("You asked for P17 to be on")) }
server["/off17"] = { (HttpRequest) -> HttpResponse in gpio.off2();return .ok(.text("You asked for P17 to be off")) }
server["/on18"] = { (HttpRequest) -> HttpResponse in gpio.on3();return .ok(.text("You asked for P18 to be on")) }
server["/off18"] = { (HttpRequest) -> HttpResponse in gpio.off3();return .ok(.text("You asked for P18 to be off")) }

do {
    try server.start()
    print( "Server started" )
} catch {
    print( "Server start failed" )
}

while true {
    usleep(100000)
}


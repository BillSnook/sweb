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

// guard CommandLine.arguments.count == 2 else {
// print("Usage:  sweb FILENAME")
// exit(-1)
// }

let server = HttpServer()

//server["/hello"] = {(HttpRequest) -> HttpResponse in GPIO.hello();return .ok(.html("You asked for a hello")) }
server["/on1"] = { (HttpRequest) -> HttpResponse in GPIO.on1();return .ok(.html("You asked for 1 to be on")) }
server["/off1"] = { (HttpRequest) -> HttpResponse in GPIO.off1();return .ok(.html("You asked for 1 to be off")) }
server["/on2"] = { (HttpRequest) -> HttpResponse in GPIO.on2();return .ok(.html("You asked for 2 to be on")) }
server["/off2"] = { (HttpRequest) -> HttpResponse in GPIO.off2();return .ok(.html("You asked for 2 to be off")) }

do {
    try server.start()
} catch {
    print( "Server start failed" )
}
print( "Server started" )

//hello()

while true {
    usleep(100000)
}


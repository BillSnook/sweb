//
//  Package.swift
//  
//
//  Created by William Snook on 8/28/17.
//
//

import PackageDescription

let package = Package(
    name: "sweb",
    dependencies: [
        .Package(url: "https://github.com/uraimo/SwiftyGPIO.git", majorVersion: 0),
        .Package(url: "https://github.com/httpswift/swifter.git", majorVersion: 1),
    ]
)

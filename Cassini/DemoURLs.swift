//
//  DemoURLs.swift
//  Cassini
//
//  Created by leaco on 2019/10/27.
//  Copyright © 2019 Leaco. All rights reserved.
//

import Foundation

struct DemoURLs {
    static let stanford = Bundle.main.url(forResource: "oval", withExtension: "jpg")
    
    static var NASA: Dictionary<String,URL> =  {
        let NASAURLString = [
            "Cassini" : "https://img.ivsky.com/img/tupian/pre/201902/22/dongji_xuejing-001.jpg",
            "Earth" : "https://img.ivsky.com/img/tupian/pre/201809/18/jiguang-007.jpg",
            "Saturn" : "https://img.ivsky.com/img/tupian/pre/201811/06/haibin_haijiao.jpg"
        ]
        var urls = Dictionary<String,URL>()
        for (key, value) in NASAURLString {
            urls[key] = URL(string: value)
        }
        return urls
    }()
    
}

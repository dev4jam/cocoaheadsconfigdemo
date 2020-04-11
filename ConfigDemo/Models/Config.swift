//
//  Config.swift
//  ConfigDemo
//
//  Created by Dmitry Klimkin on 11/4/20.
//  Copyright © 2020 Dmitry Klimkin. All rights reserved.
//

import Foundation

struct Config {
    @ConfigProperty("baseURL", defaultValue: "")
    static var baseUrl: String
}

//
//  ConfigProperty.swift
//  ConfigDemo
//
//  Created by Dmitry Klimkin on 11/4/20.
//  Copyright © 2020 Dmitry Klimkin. All rights reserved.
//

import Foundation

@propertyWrapper
struct ConfigProperty<T> {
    let key: String
    let defaultValue: T

    init(_ key: String, defaultValue: T) {
        self.key = key
        self.defaultValue = defaultValue
    }

    var wrappedValue: T {
        get {
            return value(for: key) as? T ?? defaultValue
        }
    }
    
    private func value(for key: String) -> Any {
        let bundle = Bundle(for: BundleClass.self)

        guard let configurationDictionaryPath = bundle.path(forResource: "Config", ofType: "plist"),
              let configurationDictionary = NSDictionary(contentsOfFile: configurationDictionaryPath) else { fatalError() }

        guard let value = configurationDictionary[key] else {
            fatalError("No value satysfying requirements")
        }
        
        return value
    }
}

private final class BundleClass { }

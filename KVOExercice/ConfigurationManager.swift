//
//  ConfigurationManager.swift
//  KVOExercice
//
//  Created by user143594 on 12/9/18.
//  Copyright © 2018 user143594. All rights reserved.
//


import UIKit


class ConfigurationManager: NSObject {
    
    
    @objc var configuration: Configuration
    
    
    private var dateFormatter: DateFormatter = {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm:ss"
        
        return dateFormatter
    }()
    
    
    var updatedAt: String {
        return dateFormatter.string(from: configuration.updatedAt)
    }
    
    
    init(withConfiguration configuration: Configuration) {
        
        self.configuration = configuration
        
        super.init()
    }

    
    func updateConfiguration() {
        configuration.updatedAt = Date()
    }
}

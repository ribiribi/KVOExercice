//
//  ViewController.swift
//  KVOExercice
//
//  Created by user143594 on 12/9/18.
//  Copyright © 2018 user143594. All rights reserved.
//


import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var TimeLabel: UILabel!
    @objc let configurationManager = ConfigurationManager(withConfiguration: Configuration())
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        addObserver(self, forKeyPath: #keyPath(configurationManager.configuration.updatedAt), options: [.old, .new], context: nil)
    }

    
    @IBAction func updateConfiguration(_ sender: Any) {
        configurationManager.updateConfiguration()
    }
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        
        if keyPath == #keyPath(configurationManager.configuration.updatedAt) {
            
            TimeLabel.text = configurationManager.updatedAt
        }
    }
}


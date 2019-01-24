//
//  App.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import UIKit

let app = App()

final class App {
    let window = UIWindow()
    var container: Container! {
        didSet {
            container.router.start()
        }
    }
    
    func start() {
        window.rootViewController = UIStoryboard.load(.splash)
        window.makeKeyAndVisible()
        container = Container()
    }
    
    func configure() {
        
    }
    
    
}

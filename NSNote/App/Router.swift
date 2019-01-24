//
//  Router.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import UIKit

final class Router {
    func start() {
        let vc = ListBuilder.make()
        app.window.rootViewController = vc
    }
}

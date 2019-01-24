//
//  SplashBuilder.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import UIKit

final class SplashBuilder {
    static func make() -> UIViewController {
        let vc = UIStoryboard.load(.splash)
        
        return vc
    }
}

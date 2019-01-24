//
//  Storyboard.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import UIKit

enum StoryboardIdentifier: String {
    case splash = "Splash"
    case list = "List"
}

extension UIStoryboard {
    static func load(_ sbIdentifier: StoryboardIdentifier,
                     identifier: String? = nil) -> UIViewController {
        let sb = UIStoryboard(name: sbIdentifier.rawValue, bundle: nil)
        if let identifier = identifier {
            return sb.instantiateViewController(withIdentifier: identifier)
        } else {
            return sb.instantiateInitialViewController()!
        }
    }
}

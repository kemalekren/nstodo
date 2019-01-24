//
//  ListBuilder.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import UIKit

final class ListBuilder {
    static func make() -> ListVC {
        let vc = UIStoryboard.load(.list) as! ListVC
        vc.vm = ListVM()
        return vc
    }
}

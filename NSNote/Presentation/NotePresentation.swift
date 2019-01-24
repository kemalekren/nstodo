//
//  NotePresentation.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import Foundation

struct NotePresentation {
    let title: String
    let detail: String
    
    init(model: NoteResponseModel) {
        self.title = model.name
        self.detail = model.description
    }
}

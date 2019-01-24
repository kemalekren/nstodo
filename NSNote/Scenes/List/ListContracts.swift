//
//  ListContracts.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import Foundation

protocol ListVMProtocol: class {
    var delegate: ListVMOutputProtocol? { get set }
    func load()
}

protocol ListVMOutputProtocol: class {
    func loadDidFinish(withItems items:[NotePresentation])
}

protocol ListVCProtocol: class {
}

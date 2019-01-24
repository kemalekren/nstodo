//
//  ListVM.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import Foundation

final class ListVM: ListVMProtocol {
    weak var delegate: ListVMOutputProtocol?
    
    private let responseModel = [
        NoteResponseModel(id: 5, name: "Tunc T", owner: "Tunc", description: "asdklfjaslkdf"),
        NoteResponseModel(id: 6, name: "Kemal", owner: "Ekren", description: "kalsjdflkjzxvckljsadf,m")
    ]
    
    private var items = [NoteResponseModel]() {
        didSet {
            let presentationItems = items.compactMap(NotePresentation.init)
            delegate?.loadDidFinish(withItems: presentationItems)
        }
    }
    
    func load() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) { [weak self] in
            guard let self = self else { return }
            self.items = self.responseModel
        }
    }
    
    
    
    
}

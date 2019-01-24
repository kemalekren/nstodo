//
//  NoteCell.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import UIKit

final class NoteCell: UITableViewCell {
    
    var item: NotePresentation! {
        didSet {
            nameLabel.text = item.title
            descriptionLabel.text = item.detail
        }
    }
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
}

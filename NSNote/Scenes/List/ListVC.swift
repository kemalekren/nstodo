//
//  ListVC.swift
//  NSNote
//
//  Created by Tunc Tugcu on 22.01.2019.
//  Copyright © 2019 Tunc Tugcu. All rights reserved.
//

import UIKit

final class ListVC: UITableViewController, ListVCProtocol {
    
    private let reuseId = "ListId"
    
    var vm: ListVMProtocol! {
        didSet {
            vm.delegate = self
        }
    }
    
    var items = [NotePresentation]() {
        didSet {
            tableView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vm.load()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseId, for: indexPath) as! NoteCell
        cell.item = items[indexPath.row]
        
        return cell
    }
}

extension ListVC: ListVMOutputProtocol {
    func loadDidFinish(withItems items: [NotePresentation]) {
        self.items = items
    }
}


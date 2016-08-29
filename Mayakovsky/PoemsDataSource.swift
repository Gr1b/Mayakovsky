//
//  PoemsDataSource.swift
//  Mayakovsky
//
//  Created by Grigory Bochkarev on 29.08.16.
//  Copyright © 2016 Grigory Bochkarev. All rights reserved.
//

import Foundation
import UIKit

class PoemsDataSource: NSObject {
    
    let poems : [Poem]
    
    init(poems: [Poem]) {
        self.poems = poems
    }
    
}

extension PoemsDataSource: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return poems.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(String(PoemNameCell)) as! PoemNameCell
        let poem = poems[indexPath.row]
        cell.nameOfPoem = poem.name
        return cell
    }
}
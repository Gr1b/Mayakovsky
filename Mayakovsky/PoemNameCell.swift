//
//  PoemNameCell.swift
//  Mayakovsky
//
//  Created by Grigory Bochkarev on 29.08.16.
//  Copyright © 2016 Grigory Bochkarev. All rights reserved.
//

import Foundation
import UIKit

class PoemNameCell: UITableViewCell {
    @IBOutlet private var name: UILabel?
    
    var nameOfPoem : String? {
        didSet {
            name?.text = nameOfPoem
        }
    }
}

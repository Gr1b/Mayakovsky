//
//  ViewController.swift
//  Mayakovsky
//
//  Created by Grigory Bochkarev on 29.08.16.
//  Copyright © 2016 Grigory Bochkarev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var listOfPoemsTable: UITableView!
    let dataSource : PoemsDataSource
    
    required init?(coder aDecoder: NSCoder) {
        let poems = Storage().poems
        dataSource = PoemsDataSource.init(poems: poems)
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfPoemsTable.dataSource = dataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


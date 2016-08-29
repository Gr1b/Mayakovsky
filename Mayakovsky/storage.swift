//
//  storage.swift
//  Mayakovsky
//
//  Created by Grigory Bochkarev on 29.08.16.
//  Copyright © 2016 Grigory Bochkarev. All rights reserved.
//

import Foundation

class Storage: NSObject {
    
    var poems = [Poem]()
    
    override init() {
        let path = NSBundle.mainBundle().pathForResource("poems", ofType: "plist")
        let arrOfDic = NSArray(contentsOfFile: path!)
        
        for poem in arrOfDic! {
            let name = poem.objectForKey("name") as! String
            let text = poem.objectForKey("text") as! String
            let year = poem.objectForKey("year") as! String
            let addInfo = poem.objectForKey("addInfo") as! String
            poems.append(Poem(name: name, text: text, year: year, additionlInfo: addInfo))
        }
    }
}
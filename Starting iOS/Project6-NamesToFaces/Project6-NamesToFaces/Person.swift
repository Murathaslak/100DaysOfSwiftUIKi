//
//  Person.swift
//  Project6-NamesToFaces
//
//  Created by Osman Murat Haslak on 6.10.2022.
//

import UIKit

class Person: NSObject {
    var name: String
    var image: String
    
    init(name: String, image:String) {
        self.name = name
        self.image = image
    }
}

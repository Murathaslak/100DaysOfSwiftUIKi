//
//  Petition.swift
//  Project5-WhitehousePetitions
//
//  Created by Osman Murat Haslak on 4.10.2022.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}

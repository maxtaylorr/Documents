//
//  AppFile.swift
//  Documents
//
//  Created by Max Taylor on 2/1/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import Foundation

struct AppFile : FileManipulation {
    
    let fileName: String
    
    init(fileName: String) {
        self.fileName = fileName
    }
}

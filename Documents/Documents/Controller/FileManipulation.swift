//
//  FileManipulation.swift
//  Documents
//
//  Created by Max Taylor on 2/1/19.
//  Copyright © 2019 Max Taylor. All rights reserved.
//

import Foundation

protocol FileManipulation {

    func writeFile(containing: String, withName name: String) -> Bool
    
    func readFile(withName name: String) -> String
    
    func deleteFile(withName name: String) -> Bool
    
}

extension FileManipulation {
    
    func writeFile(containing: String, withName name: String) -> Bool
    {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let filePath = documentsURL.path + "/" + name
        let rawData: Data? = containing.data(using: .utf8)
        return FileManager.default.createFile(atPath: filePath, contents: rawData, attributes: nil)
    }
    
    func readFile(withName name: String) -> String
    {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let filePath = documentsURL.path + "/" + name
        let fileContents = FileManager.default.contents(atPath: filePath)
        let fileContentsAsString = String(bytes: fileContents!, encoding: .utf8)
        print(fileContentsAsString!)
        return fileContentsAsString!
    }
    
    func deleteFile(withName name: String) -> Bool
    {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let filePath = documentsURL.appendingPathComponent(name)
        try! FileManager.default.removeItem(at: filePath)
        return true
    }
    
}

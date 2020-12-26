//
//  SharedFile.swift
//  TuistSandbox
//
//  Created by Joe Blau on 12/26/20.
//

import Foundation

public struct SharedStruct: CustomStringConvertible {
    public init() {}
    
    public var description: String {
        /*
         This is the problem, because this framework needs to be defined
         twice and not as a shared framework, you can't actually use
         localized stings properly.
         
         return SharedIOSStrings.thisIsASharedString
         return SharedWatchOSStrings.thisIsASharedString
         */
        return "Shared"
    }
}

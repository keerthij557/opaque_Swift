//
//  Swift.withoutActuallyEscaping.swift
//  opaque_Swift
//
//  Created by Vatsal Manot on 25/03/17.
//  Copyright © 2017 Vatsal Manot. All rights reserved.
//

import Foundation


public func withoutActuallyEscaping<T, U>(_ closure: ((T) -> U)) -> ((T) -> U)
{
    return -*>closure
}

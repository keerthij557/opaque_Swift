//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol Countable
{
    associatedtype Count: Integer = Int
    
    var count: Count { get }
}

public protocol opaque_NaivelyCountable
{
    var count: Int { get }
}

public protocol NaivelyCountable: opaque_NaivelyCountable, Countable
{
    var count: Int { get }
}

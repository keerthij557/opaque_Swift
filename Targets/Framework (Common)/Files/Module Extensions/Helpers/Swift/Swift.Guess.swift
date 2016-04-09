//
// Copyright (c) Vatsal Manot
//

import Swift

public struct Guess
{
    public var some: Any
    
    public init<T>(_ some: T)
    {
        self.some = some
    }
    
    public init()
    {
        self.init(() as Any)
    }
}

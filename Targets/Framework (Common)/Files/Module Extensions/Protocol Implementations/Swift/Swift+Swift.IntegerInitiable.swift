//
// Copyright (c) Vatsal Manot
//

import Swift

extension Bool: IntegerInitiable
{
    public init(_ value: Int)
    {
        self = value <= 0 ? false : true
    }
    
    public init(_ value: UInt)
    {
        self = value <= 0 ? false : true
    }
}

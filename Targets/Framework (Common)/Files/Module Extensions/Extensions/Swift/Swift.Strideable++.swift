//
// Copyright (c) Vatsal Manot
//

import Swift

extension Strideable
{
    @_transparent public mutating func advance(by distance: Stride)
    {
        self = advanced(by: distance)
    }
    
    @_transparent public mutating func advance()
    {
        advance(by: 1)
    }
}

extension Strideable
{
    @_transparent public func successor() -> Self
    {
        return advanced(by: 1)
    }
    
    @_transparent public func predecessor() -> Self
    {
        return advanced(by: -1)
    }
}

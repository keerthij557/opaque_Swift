//
// Copyright (c) Vatsal Manot
//

import Swift

extension OptionSet
{
    @_transparent public static func + (lhs: Self, rhs: Self) -> Self
    {
        return lhs.union(rhs)
    }
    
    @_transparent public static func + (lhs: Self, rhs: RawValue) -> Self
    {
        return lhs.union(.init(rawValue: rhs))
    }
    
    @_transparent public static func + (lhs: RawValue, rhs: Self) -> Self
    {
        return rhs + lhs
    }
    
    @_transparent public static func += (lhs: inout Self, rhs: Self)
    {
        lhs.formUnion(rhs)
    }
    
    @_transparent public static func += (lhs: inout Self, rhs: RawValue)
    {
        lhs.formUnion(.init(rawValue: rhs))
    }
}

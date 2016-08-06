//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Equatable2 = opaque_Equatable & Equatable

public protocol opaque_Equatable: CommonProtocol
{
    func opaque_Equatable_isEqualTo(_ other: Any) -> Bool?
}

extension opaque_Equatable where Self: Equatable
{
    public func opaque_Equatable_isEqualTo(_ other: Any) -> Bool?
    {
        return (-?>other).map({ self == $0 })
    }
}

public func opaque_Equatable_equate<T, U>(_ lhs: T, _ rhs: U) -> Bool?
{
    if let lhs = (lhs as? opaque_Equatable), let rhs = (rhs as? opaque_Equatable), let predicate = lhs.opaque_Equatable_isEqualTo(rhs)
    {
        return predicate
    }
    
    return nil
}

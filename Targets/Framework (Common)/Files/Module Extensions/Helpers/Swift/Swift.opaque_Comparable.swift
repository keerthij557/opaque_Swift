//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Comparable2 = protocol<opaque_Comparable, Comparable>

public protocol opaque_Comparable: opaque_Equatable
{
    func opaque_Comparable_isLessThan(_: Any) -> Bool?
    func opaque_Comparable_isLessThanOrEqualTo(_: Any) -> Bool?
    func opaque_Comparable_isMoreThan(_: Any) -> Bool?
    func opaque_Comparable_isMoreThanOrEqualTo(_: Any) -> Bool?
}

extension opaque_Comparable where Self: Comparable
{
    public func opaque_Comparable_isLessThan(_ other: Any) -> Bool?
    {
        return (-?>other).map({ self < $0 })
    }
    
    public func opaque_Comparable_isLessThanOrEqualTo(_ other: Any) -> Bool?
    {
        return (-?>other).map({ self <= $0 })
    }
    
    public func opaque_Comparable_isMoreThan(_ other: Any) -> Bool?
    {
        return (-?>other).map({ self > $0 })
    }
    
    public func opaque_Comparable_isMoreThanOrEqualTo(_ other: Any) -> Bool?
    {
        return (-?>other).map({ self >= $0 })
    }
}

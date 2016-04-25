//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Comparable2 = protocol<opaque_Comparable, Comparable>

public protocol opaque_Comparable
{
    func opaque_Comparable_isLessThan(_: Any) -> Bool?
    func opaque_Comparable_isLessThanOrEqualTo(_: Any) -> Bool?
    func opaque_Comparable_isMoreThan(_: Any) -> Bool?
    func opaque_Comparable_isMoreThanOrEqualTo(_: Any) -> Bool?
}

extension opaque_Comparable where Self: Comparable
{
    public func opaque_Comparable_isLessThan(other: Any) -> Bool?
    {
        return (other as? Self).map({ self < $0 })
    }
    
    public func opaque_Comparable_isLessThanOrEqualTo(other: Any) -> Bool?
    {
        return (other as? Self).map({ self <= $0 })
    }
    
    public func opaque_Comparable_isMoreThan(other: Any) -> Bool?
    {
        return (other as? Self).map({ self > $0 })
    }
    
    public func opaque_Comparable_isMoreThanOrEqualTo(other: Any) -> Bool?
    {
        return (other as? Self).map({ self >= $0 })
    }
}

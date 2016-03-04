//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Comparable2 = protocol<_Comparable, Comparable>

public protocol _Comparable
{
    func _isLessThan(_: Any) -> Bool?
    func _isLessThanOrEqualTo(_: Any) -> Bool?
    func _isMoreThan(_: Any) -> Bool?
    func _isMoreThanOrEqualTo(_: Any) -> Bool?
}

extension _Comparable where Self: Comparable
{
    public func _isLessThan(other: Any) -> Bool?
    {
        return (other as? Self).map({ self < $0 })
    }
    
    public func _isLessThanOrEqualTo(other: Any) -> Bool?
    {
        return (other as? Self).map({ self <= $0 })
    }
    
    public func _isMoreThan(other: Any) -> Bool?
    {
        return (other as? Self).map({ self > $0 })
    }
    
    public func _isMoreThanOrEqualTo(other: Any) -> Bool?
    {
        return (other as? Self).map({ self >= $0 })
    }
}

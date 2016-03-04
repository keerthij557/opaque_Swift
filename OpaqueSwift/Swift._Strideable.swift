//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Strideable2 = protocol<_Strideable, Strideable>

public protocol _Strideable: _Comparable
{
    func _distanceTo(other: Any) -> Any?
    func _advancedBy(n: Any) -> Self?
}

extension _Strideable where Self: Strideable
{
    public func _distanceTo(other: Any) -> Any?
    {
        return (other as? Self).map(distanceTo)
    }
    
    public func _advancedBy(n: Any) -> Self?
    {
        return (n as? Stride).map(advancedBy)
    }
}
//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Strideable2 = protocol<_Strideable, Strideable>

public protocol _Strideable: _Comparable
{
    static var _Stride: Any.Type { get }
    
    func _distanceTo(other: Any) -> Any?
    func _advancedBy(n: Any) -> Self?
}

extension _Strideable where Self: Strideable
{
    public static var _Stride: Any.Type
    {
        return Stride.self
    }
    
    public func _distanceTo(other: Any) -> Any?
    {
        return (other as? Self).map(distanceTo)
    }
    
    public func _advancedBy(n: Any) -> Self?
    {
        return (n as? Stride).map(advancedBy)
    }
}

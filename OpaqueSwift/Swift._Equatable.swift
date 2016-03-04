//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Equatable2 = protocol<_Equatable, Equatable>

public protocol _Equatable
{
    func _isEqualTo(_: Any) -> Bool?
}

extension _Equatable where Self: Equatable
{
    public func _isEqualTo(other: Any) -> Bool?
    {
        return (other as? Self).map({ self == $0 })
    }
}

public func _equate<T, U>(lhs: T, _ rhs: U) -> Bool?
{
    if let lhs = (lhs as? _Equatable), let rhs = (rhs as? _Equatable), let predicate = lhs._isEqualTo(rhs)
    {
        return predicate
    }
        
    return nil
}

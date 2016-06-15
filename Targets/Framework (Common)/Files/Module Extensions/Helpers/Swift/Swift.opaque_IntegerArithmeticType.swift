//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias IntegerArithmetic2 = protocol<opaque_IntegerArithmetic, IntegerArithmetic>

public protocol opaque_IntegerArithmetic
{
    func toIntMax() -> IntMax

    func opaque_IntegerArithmetic_adding(_ other: Any) -> Self?
    mutating func opaque_IntegerArithmetic_add(_ other: Any) -> Void?
    
    func opaque_IntegerArithmetic_subtracting(_ other: Any) -> Self?
    mutating func opaque_IntegerArithmetic_subtract(_ other: Any) -> Void?

    func opaque_IntegerArithmetic_multiplyingBy(_ other: Any) -> Self?
    mutating func opaque_IntegerArithmetic_multiplyBy(_ other: Any) -> Void?

    func opaque_IntegerArithmetic_dividingBy(_ other: Any) -> Self?
    mutating func opaque_IntegerArithmetic_divideBy(_ other: Any) -> Void?

    func opaque_IntegerArithmetic_modulo(_ other: Any) -> Self?
    mutating func opaque_IntegerArithmetic_modulateBy(_ other: Any) -> Void?
}

extension opaque_IntegerArithmetic where Self: IntegerArithmetic
{
    public func opaque_IntegerArithmetic_adding(_ other: Any) -> Self?
    {
        return (other as? Self).map({ self + $0 })
    }
    
    public mutating func opaque_IntegerArithmetic_add(_ other: Any) -> Void?
    {
        return (other as? Self).map({ self += $0 })
    }
    
    public func opaque_IntegerArithmetic_subtracting(_ other: Any) -> Self?
    {
        return (other as? Self).map({ self - $0 })
    }
    
    public mutating func opaque_IntegerArithmetic_subtract(_ other: Any) -> Void?
    {
        return (other as? Self).map({ self -= $0 })
    }
    
    public func opaque_IntegerArithmetic_multiplyingBy(_ other: Any) -> Self?
    {
        return (other as? Self).map({ self * $0 })
    }
    
    public mutating func opaque_IntegerArithmetic_multiplyBy(_ other: Any) -> Void?
    {
        return (other as? Self).map({ self *= $0 })
    }

    public func opaque_IntegerArithmetic_dividingBy(_ other: Any) -> Self?
    {
        return (other as? Self).map({ self / $0 })
    }
    
    public mutating func opaque_IntegerArithmetic_divideBy(_ other: Any) -> Void?
    {
        return (other as? Self).map({ self /= $0 })
    }

    public func opaque_IntegerArithmetic_modulo(_ other: Any) -> Self?
    {
        return (other as? Self).map({ self % $0 })
    }
    
    public mutating func opaque_IntegerArithmetic_modulateBy(_ other: Any) -> Void?
    {
        return (other as? Self).map({ self %= $0 })
    }
}

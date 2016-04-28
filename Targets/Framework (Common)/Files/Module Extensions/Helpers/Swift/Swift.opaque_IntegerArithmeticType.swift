//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias IntegerArithmeticType2 = protocol<opaque_IntegerArithmeticType, IntegerArithmeticType>

public protocol opaque_IntegerArithmeticType
{
    func toIntMax() -> IntMax

    func opaque_IntegerArithmeticType_adding(other: Any) -> Self?
    mutating func opaque_IntegerArithmeticType_add(other: Any) -> Void?
    
    func opaque_IntegerArithmeticType_subtracting(other: Any) -> Self?
    mutating func opaque_IntegerArithmeticType_subtract(other: Any) -> Void?

    func opaque_IntegerArithmeticType_multiplyingBy(other: Any) -> Self?
    mutating func opaque_IntegerArithmeticType_multiplyBy(other: Any) -> Void?

    func opaque_IntegerArithmeticType_dividingBy(other: Any) -> Self?
    mutating func opaque_IntegerArithmeticType_divideBy(other: Any) -> Void?

    func opaque_IntegerArithmeticType_modulo(other: Any) -> Self?
    mutating func opaque_IntegerArithmeticType_modulateBy(other: Any) -> Void?
}

extension opaque_IntegerArithmeticType where Self: IntegerArithmeticType
{
    public func opaque_IntegerArithmeticType_adding(other: Any) -> Self?
    {
        return (other as? Self).map({ self + $0 })
    }
    
    public mutating func opaque_IntegerArithmeticType_add(other: Any) -> Void?
    {
        return (other as? Self).map({ self += $0 })
    }
    
    public func opaque_IntegerArithmeticType_subtracting(other: Any) -> Self?
    {
        return (other as? Self).map({ self - $0 })
    }
    
    public mutating func opaque_IntegerArithmeticType_subtract(other: Any) -> Void?
    {
        return (other as? Self).map({ self -= $0 })
    }
    
    public func opaque_IntegerArithmeticType_multiplyingBy(other: Any) -> Self?
    {
        return (other as? Self).map({ self * $0 })
    }
    
    public mutating func opaque_IntegerArithmeticType_multiplyBy(other: Any) -> Void?
    {
        return (other as? Self).map({ self *= $0 })
    }

    public func opaque_IntegerArithmeticType_dividingBy(other: Any) -> Self?
    {
        return (other as? Self).map({ self / $0 })
    }
    
    public mutating func opaque_IntegerArithmeticType_divideBy(other: Any) -> Void?
    {
        return (other as? Self).map({ self /= $0 })
    }

    public func opaque_IntegerArithmeticType_modulo(other: Any) -> Self?
    {
        return (other as? Self).map({ self % $0 })
    }
    
    public mutating func opaque_IntegerArithmeticType_modulateBy(other: Any) -> Void?
    {
        return (other as? Self).map({ self %= $0 })
    }
}

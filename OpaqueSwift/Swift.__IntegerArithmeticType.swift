//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias IntegerArithmeticType2 = protocol<__IntegerArithmeticType, IntegerArithmeticType>

public protocol __IntegerArithmeticType
{
    func toIntMax() -> IntMax

    func _adding(other: Any) -> Self?
    func _subtracting(other: Any) -> Self?
    func _multiplying(by other: Any) -> Self?
    func _dividing(by other: Any) -> Self?
    func _modulo(other: Any) -> Self?
}

extension __IntegerArithmeticType where Self: IntegerArithmeticType
{
    public func _adding(other: Any) -> Self?
    {
        return (other as? Self).map({ self + $0 })
    }
    
    public func _subtracting(other: Any) -> Self?
    {
        return (other as? Self).map({ self - $0 })
    }
    
    public func _multiplying(by other: Any) -> Self?
    {
        return (other as? Self).map({ self * $0 })
    }
    
    public func _dividing(by other: Any) -> Self?
    {
        return (other as? Self).map({ self / $0 })
    }
    
    public func _modulo(other: Any) -> Self?
    {
        return (other as? Self).map({ self % $0 })
    }
}

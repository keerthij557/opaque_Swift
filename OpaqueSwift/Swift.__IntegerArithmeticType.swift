//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias IntegerArithmeticType2 = protocol<__IntegerArithmeticType, IntegerArithmeticType>

public protocol __IntegerArithmeticType
{
    func toIntMax() -> IntMax

    func _addingValue(other: Any) -> Self?
    func _subtractingValue(other: Any) -> Self?
    func _multiplyingByValue(other: Any) -> Self?
    func _dividingByValue(other: Any) -> Self?
    func _moduloValue(other: Any) -> Self?
}

extension __IntegerArithmeticType where Self: IntegerArithmeticType
{
    public func _addingValue(other: Any) -> Self?
    {
        return (other as? Self).map({ self + $0 })
    }
    
    public mutating func _addValue(other: Any) -> Void?
    {
        return (other as? Self).map({ self += $0 })
    }
    
    public func _subtractingValue(other: Any) -> Self?
    {
        return (other as? Self).map({ self - $0 })
    }
    
    public mutating func _subtractValue(other: Any) -> Void?
    {
        return (other as? Self).map({ self -= $0 })
    }
    
    public func _multiplyingByValue(other: Any) -> Self?
    {
        return (other as? Self).map({ self * $0 })
    }
    
    public mutating func _multiplyByValue(other: Any) -> Void?
    {
        return (other as? Self).map({ self *= $0 })
    }

    public func _dividingByValue(other: Any) -> Self?
    {
        return (other as? Self).map({ self / $0 })
    }
    
    public mutating func _divideByValue(other: Any) -> Void?
    {
        return (other as? Self).map({ self /= $0 })
    }

    public func _moduloValue(other: Any) -> Self?
    {
        return (other as? Self).map({ self % $0 })
    }
    
    public mutating func _modulateByValue(other: Any) -> Void?
    {
        return (other as? Self).map({ self %= $0 })
    }
}

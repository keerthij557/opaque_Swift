//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias GeneratorType2 = protocol<_GeneratorType, GeneratorType>

public protocol _GeneratorType
{
    static var _Element: Any.Type { get }
    
    mutating func _next() -> Any?
    
    func _toAnyGenerator() -> Any
}

extension _GeneratorType where Self: GeneratorType
{
    public static var _Element: Any.Type
    {
        return Element.self
    }
    
    public mutating func _next() -> Any?
    {
        return next().map({ $0 })
    }
    
    public func _toAnyGenerator() -> Any
    {
        return AnyGenerator(self)
    }
}

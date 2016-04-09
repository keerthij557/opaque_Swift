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
    
    func toOpaque() -> AnyGenerator<Any>
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
    
    public func toOpaque() -> AnyGenerator<Any>
    {
        var copyOfSelf = self
        
        return .init(body: { copyOfSelf.next() })
    }
}

extension Guess: GeneratorType
{
    public mutating func next() -> Any?
    {
        return forcetype(_GeneratorType.self, { $0._next() })
    }
}

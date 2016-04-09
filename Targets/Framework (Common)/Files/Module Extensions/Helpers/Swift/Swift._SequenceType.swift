//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias SequenceType2 = protocol<_SequenceType, SequenceType>

public protocol _SequenceType
{
    static var _Generator: Any.Type { get }
    static var _Generator_Element: Any.Type { get }
    
    func _generate() -> _GeneratorType
    
    func _toAnySequence() -> Any
    
    func toOpaque() -> AnySequence<Any>
}

extension _SequenceType where Self: SequenceType
{
    public static var _Generator: Any.Type
    {
        return Generator.self
    }
    
    public static var _Generator_Element: Any.Type
    {
        return Generator.Element.self
    }
    
    public func _generate() -> _GeneratorType
    {
        return generate() as! _GeneratorType
    }
    
    public func _toAnySequence() -> Any
    {
        return AnySequence({ self.generate() })
    }
    
    public func toOpaque() -> AnySequence<Any>
    {
        return AnySequence(lazy.map({ $0 }))
    }
}

extension _SequenceType where Self: SequenceType, Self.Generator: _GeneratorType
{
    public func _generate() -> _GeneratorType
    {
        return generate()
    }
}

extension Guess: SequenceType
{
    public func generate() -> AnyGenerator<Any>
    {
        return forcetype(_SequenceType)._generate().toOpaque()
    }
}

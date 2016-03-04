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
    
    func toOpaque() -> AnySequence<Any>
    
    func _toAnySequence() -> Any
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

    public func toOpaque() -> AnySequence<Any>
    {
        return AnySequence(lazy.map({ $0 }))
    }
    
    public func _toAnySequence() -> Any
    {
        return AnySequence({ self.generate() })
    }
}

extension _SequenceType where Self: SequenceType, Self.Generator: _GeneratorType
{
    public func _generate() -> _GeneratorType
    {
        return generate()
    }
}

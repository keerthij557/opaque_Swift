//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias SequenceType2 = protocol<opaque_SequenceType, SequenceType>

public protocol opaque_SequenceType
{
    static var opaque_SequenceType_Generator: Any.Type { get }
    static var opaque_SequenceType_Generator_Element: Any.Type { get }
    
    func opaque_SequenceType_generate() -> opaque_GeneratorType
    
    func opaque_SequenceType_toAnySequence() -> Any
    
    func toOpaque() -> AnySequence<Any>
}

extension opaque_SequenceType where Self: SequenceType
{
    public static var opaque_SequenceType_Generator: Any.Type
    {
        return Generator.self
    }
    
    public static var opaque_SequenceType_Generator_Element: Any.Type
    {
        return Generator.Element.self
    }
    
    public func opaque_SequenceType_generate() -> opaque_GeneratorType
    {
        return generate() as! opaque_GeneratorType
    }
    
    public func opaque_SequenceType_toAnySequence() -> Any
    {
        return AnySequence({ self.generate() })
    }
    
    public func toOpaque() -> AnySequence<Any>
    {
        return AnySequence(lazy.map({ $0 }))
    }
}

extension opaque_SequenceType where Self: SequenceType, Self.Generator: opaque_GeneratorType
{
    public func opaque_SequenceType_generate() -> opaque_GeneratorType
    {
        return generate()
    }
}

extension Guess: SequenceType
{
    public func generate() -> AnyGenerator<Any>
    {
        return forcetype(opaque_SequenceType).opaque_SequenceType_generate().toOpaque()
    }
}

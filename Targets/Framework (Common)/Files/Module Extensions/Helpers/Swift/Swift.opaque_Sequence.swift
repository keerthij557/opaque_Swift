//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Sequence2 = protocol<opaque_Sequence, Sequence>

public protocol opaque_Sequence
{
    static var opaque_Sequence_Generator: Any.Type { get }
    static var opaque_Sequence_Generator_Element: Any.Type { get }
    
    func opaque_Sequence_generate() -> opaque_IteratorProtocol
    
    func opaque_Sequence_toAnySequence() -> Any
    
    func toOpaque() -> AnySequence<Any>
}

extension opaque_Sequence where Self: Sequence
{
    public static var opaque_Sequence_Generator: Any.Type
    {
        return Iterator.self
    }
    
    public static var opaque_Sequence_Generator_Element: Any.Type
    {
        return Iterator.Element.self
    }
    
    public func opaque_Sequence_generate() -> opaque_IteratorProtocol
    {
        return makeIterator() as! opaque_IteratorProtocol
    }
    
    public func opaque_Sequence_toAnySequence() -> Any
    {
        return AnySequence({ self.makeIterator() })
    }
    
    public func toOpaque() -> AnySequence<Any>
    {
        return AnySequence(lazy.map({ $0 }))
    }
}

extension opaque_Sequence where Self: Sequence, Self.Iterator: opaque_IteratorProtocol
{
    public func opaque_Sequence_generate() -> opaque_IteratorProtocol
    {
        return makeIterator()
    }
}

extension Guess: Sequence
{
    public func makeIterator() -> AnyIterator<Any>
    {
        return forcetype(opaque_Sequence).opaque_Sequence_generate().toOpaque()
    }
}

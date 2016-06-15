//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias IteratorProtocol2 = protocol<opaque_IteratorProtocol, IteratorProtocol>

public protocol opaque_IteratorProtocol
{
    static var opaque_IteratorProtocol_Element: Any.Type { get }
    
    mutating func opaque_IteratorProtocol_next() -> Any?
    
    func opaque_IteratorProtocol_toAnyGenerator() -> Any
    
    func toOpaque() -> AnyIterator<Any>
}

extension opaque_IteratorProtocol where Self: IteratorProtocol
{
    public static var opaque_IteratorProtocol_Element: Any.Type
    {
        return Element.self
    }
    
    public mutating func opaque_IteratorProtocol_next() -> Any?
    {
        return next().map({ $0 })
    }
    
    public func opaque_IteratorProtocol_toAnyGenerator() -> Any
    {
        return AnyIterator(self)
    }
    
    public func toOpaque() -> AnyIterator<Any>
    {
        var copyOfSelf = self
        
        return .init({ copyOfSelf.next() })
    }
}

extension Guess: IteratorProtocol
{
    public mutating func next() -> Any?
    {
        var value = forcetype(opaque_IteratorProtocol.self)
        
        defer
        {
            some = value
        }
        
        return value.opaque_IteratorProtocol_next()
    }
}

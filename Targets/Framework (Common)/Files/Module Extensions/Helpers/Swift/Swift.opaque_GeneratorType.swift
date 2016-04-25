//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias GeneratorType2 = protocol<opaque_GeneratorType, GeneratorType>

public protocol opaque_GeneratorType
{
    static var opaque_GeneratorType_Element: Any.Type { get }
    
    mutating func opaque_GeneratorType_next() -> Any?
    
    func opaque_GeneratorType_toAnyGenerator() -> Any
    
    func toOpaque() -> AnyGenerator<Any>
}

extension opaque_GeneratorType where Self: GeneratorType
{
    public static var opaque_GeneratorType_Element: Any.Type
    {
        return Element.self
    }
    
    public mutating func opaque_GeneratorType_next() -> Any?
    {
        return next().map({ $0 })
    }
    
    public func opaque_GeneratorType_toAnyGenerator() -> Any
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
        return forcetype(opaque_GeneratorType.self, { $0.opaque_GeneratorType_next() })
    }
}

//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnyCollection: InitiableExpressibleByNilLiteral
{
    public init()
    {
        self.init([])
    }
}

extension AnyBidirectionalCollection: InitiableExpressibleByNilLiteral
{
    public init()
    {
        self.init([])
    }
}

extension AnyRandomAccessCollection: InitiableExpressibleByNilLiteral
{
    public init()
    {
        self.init([])
    }
}

extension AnySequence: InitiableExpressibleByNilLiteral
{
    public init()
    {
        self.init(EmptyIterator())
    }
}

extension Array: InitiableExpressibleByNilLiteral
{
    
}

extension ArraySlice: InitiableExpressibleByNilLiteral
{
    
}

extension AutoreleasingUnsafeMutablePointer: InitiableExpressibleByNilLiteral
{
    
}

extension Character: InitiableExpressibleByNilLiteral
{
    public init()
    {
        self.init(" ")
    }
}

extension ContiguousArray: InitiableExpressibleByNilLiteral
{
    
}

extension Dictionary: InitiableExpressibleByNilLiteral
{
    
}

extension DictionaryLiteral: InitiableExpressibleByNilLiteral
{
    public init()
    {
        self = [:]
    }
}

extension EmptyCollection: InitiableExpressibleByNilLiteral
{
    
}

extension EmptyIterator: InitiableExpressibleByNilLiteral
{

}

extension ImplicitlyUnwrappedOptional: InitiableExpressibleByNilLiteral
{
    
}

extension Optional: InitiableExpressibleByNilLiteral
{
    public init()
    {
        self = .none
    }
}

extension Set: InitiableExpressibleByNilLiteral
{
    
}

extension StaticString: InitiableExpressibleByNilLiteral
{
    
}

extension String: InitiableExpressibleByNilLiteral
{
    
}

extension String.CharacterView: InitiableExpressibleByNilLiteral
{
    
}

extension UnicodeScalar: InitiableExpressibleByNilLiteral
{
    
}

extension UnsafeMutablePointer: InitiableExpressibleByNilLiteral
{
    
}

extension UnsafePointer: InitiableExpressibleByNilLiteral
{
    
}

extension UTF8: InitiableExpressibleByNilLiteral
{
    
}

extension UTF16: InitiableExpressibleByNilLiteral
{
    
}

extension UTF32: InitiableExpressibleByNilLiteral
{
    
}

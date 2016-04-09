//
// Copyright (c) Vatsal Manot
//

import Swift

public struct Guess: ErrorType
{
    public var some: Any
    
    public init<T>(_ some: T)
    {
        self.some = some
    }
    
    public init()
    {
        self.init(() as Any)
    }
}

extension Guess
{
    public func forcetype<T>(_: T.Type = T.self, file: StaticString = #file, line: UInt = #line) -> T
    {
        if let result = some as? T
        {
            return result
        }
        
        fatalError("unexpectedly found nil while unwrapping an Optional value", file: file, line: line)
    }
    
    public mutating func forcetype<T, U>(_: T.Type = T.self, file: StaticString = #file, line: UInt = #line, _ f: ((inout T) -> U)) -> U
    {
        var `self` = forcetype(T)
        
        let result = f(&`self`)
        
        some = `self`
        
        return result
    }
}

extension Guess: ArrayLiteralConvertible
{
    public init(arrayLiteral elements: [Any]...)
    {
        self.init(elements)
    }
}

extension Guess: BooleanLiteralConvertible
{
    public init(booleanLiteral value: Bool)
    {
        self.init(value as Any)
    }
}

extension Guess: DictionaryLiteralConvertible
{
    public init(dictionaryLiteral elements: (Any, Any)...)
    {
        self.init(elements)
    }
}

extension Guess: FloatLiteralConvertible
{
    public init(floatLiteral value: Float)
    {
        self.init(value)
    }
}

extension Guess: IntegerLiteralConvertible
{
    public init(integerLiteral value: Int)
    {
        self.init(value)
    }
}

extension Guess: StringLiteralConvertible
{
    public init(unicodeScalarLiteral value: String)
    {
        self.init(value)
    }
    
    public init(extendedGraphemeClusterLiteral value: String)
    {
        self.init(value)
    }
    
    public init(stringLiteral value: String)
    {
        self.init(value)
    }
}

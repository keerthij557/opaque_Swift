//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func silent<T>(_ x: (@autoclosure @escaping (Void) throws -> T)) -> ((Void) -> T?)
{
    return { try? x() }
}

@_transparent public func silent<T>(_ x: (@autoclosure @escaping (Void) throws -> T?)) -> ((Void) -> T?)
{
    return { (try? x()) ?? nil }
}

@_transparent public func silent<T, U>(_ f: (@escaping (T) throws -> U)) -> ((T) -> U?)
{
    return { try? f($0) }
}

@_transparent public func silent<T, U>(_ f: (@escaping (T) throws -> U?)) -> ((T) -> U?)
{
    return { (try? f($0)) ?? nil }
}

@_transparent public func silence<T>(_ x: (@autoclosure @escaping (Void) throws -> T)) -> T?
{
    return silent(x)()
}

@_transparent public func silence<T>(_ x: (@autoclosure @escaping (Void) throws -> T?)) -> T?
{
    return silent(x)()
}

@_transparent public func silence<T>(_ f: (@escaping (Void) throws -> T)) -> T?
{
    return silent(f)()
}

@_transparent public func silence<T>(_ f: (@escaping (Void) throws -> T?)) -> T?
{
    return silent(f)()
}

@_transparent public func throwing<T>(_ x: (@autoclosure @escaping (Void) -> T)) -> ((Void) throws -> T)
{
    return x
}

@_transparent public func throwing<T, U>(_ f: (@escaping (T) -> U)) -> ((T) throws -> U)
{
    return f
}

@_transparent public func fatalThrow<T: Error>(_ error: T, file: StaticString = #file, line: UInt = #line) -> Never
{
    fatalError(String(describing: error), file: file, line: line)
}

extension Boolean where Self: Error
{
    public func throwSelfIfFalse() throws
    {
        if !boolValue
        {
            throw boolValue
        }
    }
}

extension Collection
{
    public func fatallyAssertIndexAsValidSubscriptArgument(_ index: Index)
    {
        if (startIndex == endIndex) || (index < startIndex && index >= endIndex)
        {
            fatalError("Index out of range")
        }
    }
    
    public func fatallyAssertCollectionIsNotEmpty()
    {
        if isEmpty
        {
            fatalError("Collection is empty")
        }
    }
}

extension Optional
{
    @_transparent public func orFatallyThrow(_ message: (@autoclosure (Void) -> String), file: StaticString = #file, line: UInt = #line) -> Wrapped
    {
        if let wrapped = self
        {
            return wrapped
        }
            
        else
        {
            fatalThrow(message(), file: file, line: line)
        }
    }
    
    @_transparent public func orFatallyThrowFunctionFailureError(_ function: StaticString = #function, file: StaticString = #file, line: UInt = #line) -> Wrapped
    {
        return orFatallyThrow(String(describing: function) + " failure", file: file, line: line)
    }
    
    @_transparent public func orFatallyThrowUnimplementedError(_ function: StaticString = #function, file: StaticString = #file, line: UInt = #line) -> Wrapped
    {
        return unimplemented(function, file: file, line: line)
    }

    @_transparent public func forceUnwrap(_ file: StaticString = #file, line: UInt = #line) -> Wrapped
    {
        return orFatallyThrow("unexpectedly found nil while unwrapping an Optional value", file: file, line: line)
    }
    
    @_transparent public func unwrap() throws -> Wrapped
    {
        guard let wrapped = self else
        {
            throw Optional<Wrapped>.none
        }
        
        return wrapped
    }
}

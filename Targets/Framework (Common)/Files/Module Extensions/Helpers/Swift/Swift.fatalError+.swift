//
// Copyright (c) Vatsal Manot
//

import Swift

extension Error
{
    public func crashFatally(_ file: StaticString = #file, line: UInt = #line) -> Never
    {
        fatalError(.init(describing: self), file: file, line: line)
    }
    
    public func crashFatally<T>(_ file: StaticString = #file, line: UInt = #line) -> T
    {
        fatalError(.init(describing: self), file: file, line: line)
    }
}

public func functionFailure(_ function: StaticString = #function, file: StaticString = #file, line: UInt = #line) -> Never
{
    fatalError(String(describing: function) + " failure", file: file, line: line)
}

public func impossible(_ file: StaticString = #file, line: UInt = #line) -> Never
{
    fatalError("t'is but impossible", file: file, line: line)
}

public func impossible<T>(_ file: StaticString = #file, line: UInt = #line) -> T
{
    fatalError("t'is but impossible", file: file, line: line)
}

public func unavailable(_ function: StaticString = #function, file: StaticString = #file, line: UInt = #line) -> Never
{
    fatalError("\(function) unavailable")
}

public func unavailable<T>(_ function: StaticString = #function, file: StaticString = #file, line: UInt = #line) -> T
{
    unavailable(function, file: file, line: line)
}

public func unavailable<T, U>(_: T) -> U
{
    fatalError("function unavailable")
}

public func unimplemented(_ function: String = #function, file: StaticString = #file, line: UInt = #line) -> Never
{
    fatalError("\(function) unimplemented", file: file, line: line)
}
 
public func unimplemented<T>(_ function: String = #function, file: StaticString = #file, line: UInt = #line) -> T
{
    unimplemented(function, file: file, line: line)
}

public func unimplemented<T, U>(_: T) -> U
{
    fatalError("function unimplemented")
}

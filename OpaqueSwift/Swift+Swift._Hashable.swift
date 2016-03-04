//
// Copyright (c) Vatsal Manot
//

import Swift

extension Character: _Hashable
{
    
}

extension COpaquePointer: _Hashable
{
    
}

extension Int: _Hashable
{
    
}

extension Int8: _Hashable
{
    
}

extension Int16: _Hashable
{
    
}

extension Int32: _Hashable
{
    
}

extension Int64: _Hashable
{
    
}

extension ObjectIdentifier: _Hashable
{
    
}

extension Set: _Hashable
{
    
}

extension String: _Hashable
{
    
}

extension StaticString: _Hashable, Hashable
{
    public var hashValue: Int
    {
        return stringValue.hashValue
    }
}

public func == (lhs: StaticString, rhs: StaticString) -> Bool
{
    return lhs.hashValue == rhs.hashValue
}

extension UInt: _Hashable
{
    
}

extension UInt8: _Hashable
{
    
}

extension UInt16: _Hashable
{
    
}

extension UInt32: _Hashable
{
    
}

extension UInt64: _Hashable
{
    
}

extension UnicodeScalar: _Hashable
{
    
}

extension UnsafeMutablePointer: _Hashable
{
    
}

extension UnsafePointer: _Hashable
{
    
}

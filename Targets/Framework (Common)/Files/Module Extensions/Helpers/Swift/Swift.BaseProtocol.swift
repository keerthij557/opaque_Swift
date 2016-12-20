//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol BaseProtocol
{
    
}

extension BaseProtocol
{
    @_transparent public func applyingSelfOn<T>(_ f: ((Self) throws -> T)) rethrows -> Self
    {
        _ = try f(self)
        
        return self
    }
    
    @_transparent public mutating func applyingSelfOn<T>(_ f: ((inout Self) throws -> T)) rethrows -> Self
    {
        _ = try f(&self)
        
        return self
    }
    
    @_transparent public func mapSelf<T>(_ f: ((Self) throws -> T)) rethrows -> T
    {
        return try f(self)
    }
}

extension BaseProtocol
{
    public func printSelf()
    {
        mapSelf({ print($0) })
    }
    
    public func printingSelf() -> Self
    {
        return applyingSelfOn({ print($0) })
    }
}

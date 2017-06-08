//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol AnyProtocol
{

}

// MARK: - Extensions -

extension AnyProtocol
{
    public typealias _Self = Self
}

extension AnyProtocol
{
    @_transparent public init?(_optional _self: Self?)
    {
        guard let _self = _self else
        {
            return nil
        }
        
        self = _self
    }
}

extension AnyProtocol
{
    @_transparent public func applyingOnSelf<T>(_ f: ((inout Self) throws -> T)) rethrows -> Self
    {
        var result = self
        
        _ = try f(&result)
        
        return result
    }

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
}

extension AnyProtocol
{
    @_transparent public func mapSelf<T>(_ f: ((Self) throws -> T)) rethrows -> T
    {
        return try f(self)
    }
}

extension AnyProtocol
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

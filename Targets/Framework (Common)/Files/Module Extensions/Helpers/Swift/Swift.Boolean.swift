//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol Boolean
{
    var boolValue: Bool { get }
}

// MARK: - Extensions -

extension Boolean
{
    @_transparent public func then<T>(_ value: (@autoclosure (Void) throws -> T)) rethrows -> T?
    {
        return boolValue ? try value() : nil
    }
    
    @discardableResult @_transparent public static func ?> <T>(lhs: Self, rhs: (@autoclosure (Void) throws -> T)) rethrows -> T?
    {
        return try lhs.then(rhs())
    }

    @_transparent public func then<T>(_ value: (@autoclosure (Void) throws -> T?)) rethrows -> T?
    {
        return boolValue ? try value() : nil
    }
    
    @discardableResult @_transparent public static func ?> <T>(lhs: Self, rhs: (@autoclosure (Void) throws -> T?)) rethrows -> T?
    {
        return try lhs.then(rhs())
    }
}

infix operator ||>: LogicalDisjunctionPrecedence

extension Boolean
{
    @_transparent public func or<T>(_ value: (@autoclosure (Void) throws -> T)) rethrows -> T?
    {
        return !boolValue ? try value() : nil
    }
    
    @discardableResult @_transparent public static func ||> <T>(lhs: Self, rhs: (@autoclosure (Void) throws -> T)) rethrows -> T?
    {
        return try lhs.or(rhs())
    }

    @_transparent public func or<T>(_ value: (@autoclosure (Void) throws -> T?)) rethrows -> T?
    {
        return !boolValue ? try value() : nil
    }
    
    @discardableResult @_transparent public static func ||> <T>(lhs: Self, rhs: (@autoclosure (Void) throws -> T?)) rethrows -> T?
    {
        return try lhs.or(rhs())
    }
}

infix operator &&=: AssignmentPrecedence
infix operator ||=: AssignmentPrecedence

extension Boolean
{
    @_transparent public static func &&= (lhs: inout Self, rhs: (@autoclosure (Void) throws -> Self)) rethrows
    {
        if lhs.boolValue
        {
            lhs = try rhs()
        }
    }
    
    @_transparent public static func ||= (lhs: inout Self, rhs: (@autoclosure (Void) throws -> Self)) rethrows
    {
        if !lhs.boolValue
        {
            let rhs = try rhs()
            
            if rhs.boolValue
            {
                lhs = rhs
            }
        }
    }
}

// MARK: - Helpers -

extension BooleanInitiable
{
    public init<T: Boolean>(boolean: T)
    {
        self.init(boolean.boolValue)
    }
}

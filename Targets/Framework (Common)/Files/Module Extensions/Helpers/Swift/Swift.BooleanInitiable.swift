//
// Copyright (c) Vatsal Manot
//

import Darwin
import ObjectiveC
import Swift

public protocol BooleanInitiable
{
    init(_: Bool)
    init(_: DarwinBoolean)
    init(_: ObjCBool)
}

extension BooleanInitiable
{
    @_transparent public init(_ value: DarwinBoolean)
    {
        self.init(value.boolValue)
    }

    @_transparent public init(_ value: ObjCBool)
    {
        self.init(value.boolValue)
    }
}

extension BooleanInitiable where Self: ExpressibleByIntegerLiteral
{
    @_transparent public init(_ value: Bool)
    {
        self = (value == true) ? 1 : 0
    }
}

extension BooleanInitiable where Self: ExpressibleByBooleanLiteral
{
    @_transparent public init(booleanLiteral value: Bool)
    {
        self.init(value)
    }
}

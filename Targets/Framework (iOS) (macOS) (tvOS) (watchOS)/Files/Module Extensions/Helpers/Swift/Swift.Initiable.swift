//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol Initiable: AnyProtocol
{
    init()
}

public protocol InitiableExpressibleByNilLiteral: ExpressibleByNilLiteral, Initiable
{
    
}

public protocol SelfInitiable: AnyProtocol
{
    init(_: Self)
}

// MARK: - Implementation -

extension InitiableExpressibleByNilLiteral
{
    public init(nilLiteral: ())
    {
        self.init()
    }
}

extension SelfInitiable
{
    public init(_ x: Self)
    {
        self = x
    }
}

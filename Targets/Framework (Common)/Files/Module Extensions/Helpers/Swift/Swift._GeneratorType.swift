//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias GeneratorType2 = protocol<_GeneratorType, GeneratorType>

public protocol _GeneratorType
{
    mutating func _next() -> Any?
}

extension _GeneratorType where Self: GeneratorType
{
    public mutating func _next() -> Any?
    {
        return next().map({ $0 })
    }
}

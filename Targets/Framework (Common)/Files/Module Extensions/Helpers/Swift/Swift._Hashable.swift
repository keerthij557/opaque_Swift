//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Hashable2 = protocol<_Hashable, Hashable>

public protocol _Hashable: _Equatable
{
    var hashValue: Int { get }
}

public func == <T: _Hashable>(lhs: T, rhs: T) -> Bool
{
    return lhs.hashValue == rhs.hashValue
}

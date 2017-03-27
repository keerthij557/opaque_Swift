//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias Hashable2 = opaque_Hashable & Hashable

public protocol opaque_Hashable: opaque_Equatable
{
    var hashValue: Int { get }
}

// MARK: - Helpers -

@_transparent public func == <T: opaque_Hashable>(lhs: T, rhs: T) -> Bool
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: opaque_Hashable & Sequence>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Equatable
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: opaque_Hashable & Sequence>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Hashable
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: Hashable2 & Sequence>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Equatable
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: Hashable2 & Sequence>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Hashable
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: opaque_Hashable & Collection>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Equatable
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: opaque_Hashable & Collection>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Hashable
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: Hashable2 & Collection>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Equatable
{
    return lhs.hashValue == rhs.hashValue
}

@_transparent public func == <T: Hashable2 & Collection>(lhs: T, rhs: T) -> Bool where T.Iterator.Element: Hashable
{
    return lhs.hashValue == rhs.hashValue
}

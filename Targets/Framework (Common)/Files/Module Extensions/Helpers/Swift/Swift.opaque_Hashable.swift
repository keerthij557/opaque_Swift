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

@_transparent public func hash<T: opaque_Hashable>(_ value: T) -> Int
{
    return value.hashValue
}

@_transparent public func hash<T: opaque_Hashable, U: opaque_Hashable>(_ first: T, _ second: U) -> Int
{
    let combine: ((Int, Int) -> Int) = id(^)
    
    return combine(combine(5381, hash(first)), hash(second))
}

@_transparent public func hash<T: opaque_Hashable, U: opaque_Hashable, V: opaque_Hashable>(_ first: T, _ second: U, _ third: V) -> Int
{
    let combine: ((Int, Int) -> Int) = id(^)
    
    return combine(combine(combine(5381, hash(first)), hash(second)), hash(third))
}

@_transparent public func hash<T: opaque_Hashable, U: opaque_Hashable, V: opaque_Hashable, W: opaque_Hashable>(_ first: T, _ second: U, _ third: V, _ fourth: W) -> Int
{
    let combine: ((Int, Int) -> Int) = id(^)
    
    return combine(combine(combine(combine(5381, hash(first)), hash(second)), hash(third)), hash(fourth))
}

@_transparent public func hash<T: opaque_Hashable, U: opaque_Hashable, V: opaque_Hashable, W: opaque_Hashable, X: opaque_Hashable>(_ first: T, _ second: U, _ third: V, _ fourth: W, _ fifth: X) -> Int
{
    let combine: ((Int, Int) -> Int) = id(^)
    
    return combine(combine(combine(combine(combine(5381, hash(first)), hash(second)), hash(third)), hash(fourth)), hash(fifth))
}

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

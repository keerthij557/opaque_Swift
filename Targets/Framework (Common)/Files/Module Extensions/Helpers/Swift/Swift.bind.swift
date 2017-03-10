//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func bind<T, U>(_ f: (@escaping (T) -> U), _ x: T) -> ((Void) -> U)
{
    return { f(x) }
}

@_transparent public func bind<T, U, V>(_ f: (@escaping (T, U) -> V), _ x: T) -> ((U) -> V)
{
    return { f(x, $0) }
}

@_transparent public func bind<T, U, V>(_ f: (@escaping (T, U) -> V), _ x: U) -> ((T) -> V)
{
    return { f($0, x) }
}

@_transparent public func bind<T, U, V>(_ f: (@escaping (T, U) -> V), _ x: (T, U)) -> ((Void) -> V)
{
    return { f(x.0, x.1) }
}

@_transparent public func bind<T, U, V, W>(_ f: (@escaping (T, U, V) -> W), _ x: T) -> ((U, V) -> W)
{
    return { f(x, $0, $1) }
}

@_transparent public func bind<T, U, V, W>(_ f: (@escaping (T, U, V) -> W), _ x: U) -> ((T, V) -> W)
{
    return { f($0, x, $1) }
}

@_transparent public func bind<T, U, V, W>(_ f: (@escaping (T, U, V) -> W), _ x: V) -> ((T, U) -> W)
{
    return { f($0, $1, x) }
}

@_transparent public func bind<T, U, V, W>(_ f: (@escaping (T, U, V) -> W), _ x: (T, U)) -> ((V) -> W)
{
    return { f(x.0, x.1, $0) }
}

@_transparent public func bind<T, U, V, W>(_ f: (@escaping (T, U, V) -> W), _ x: (T, V)) -> ((U) -> W)
{
    return { f(x.0, $0, x.1) }
}

@_transparent public func bind<T, U, V, W>(_ f: (@escaping (T, U, V) -> W), _ x: (U, V)) -> ((T) -> W)
{
    return { f($0, x.0, x.1) }
}

@_transparent public func bind<T, U, V, W>(_ f: (@escaping (T, U, V) -> W), _ x: (T, U, V)) -> ((Void) -> W)
{
    return { f(x.0, x.1, x.2) }
}

@_transparent public func bind<T, U, V>(_ f: (@escaping (T) -> ((U) -> V)), _ x: T) -> ((U) -> V)
{
    return { f(x)($0) }
}

@_transparent public func bind<T, U, V>(_ f: (@escaping (T) -> ((U) -> V)), _ x: U) -> ((T) -> V)
{
    return { f($0)(x) }
}

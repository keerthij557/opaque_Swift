//
// Copyright (c) Vatsal Manot
//

import Swift

public func recursive<T, U>(_ f: (@escaping ((T) -> U) -> ((T) -> U))) -> ((T) -> U)
{
    return { f(recursive(f))($0) }
}

public func recursive<T, U>(_: ((T) -> U).Type, _ f: (@escaping ((T) -> U) -> ((T) -> U))) -> ((T) -> U)
{
    return recursive(f)
}

public func recur<T, U>(_ f: (@escaping ((T) -> U) -> ((T) -> U)), with x: T) -> U
{
    return recursive(f)(x)
}

public func recur<T, U>(with x: T, f: (@escaping ((T) -> U) -> ((T) -> U))) -> U
{
    return recursive(f)(x)
}

public func recur<T, U>(_: ((T) -> U).Type, f: (@escaping ((T) -> U) -> ((T) -> U)), with x: T) -> U
{
    return recursive(f)(x)
}

public func recur<T, U>(_: ((T) -> U).Type, with x: T, f: (@escaping ((T) -> U) -> ((T) -> U))) -> U
{
    return recursive(f)(x)
}

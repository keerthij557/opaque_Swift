//
// Copyright (c) Vatsal Manot
//

import Swift

@_transparent public func flatten<T, U>(_ f: @escaping ((T) -> ((Void) -> U))) -> ((T) -> U)
{
    return { f($0)() }
}

@_transparent public func flatten<T, U>(_ f: (@escaping (T) -> ((Void) -> ((Void) -> U)))) -> ((T) -> U)
{
    return { flatten(f)($0)() }
}

@_transparent public func flatten<T, U>(_ f: (@escaping (T) -> ((Void) -> ((Void) -> ((Void) -> U))))) -> ((T) -> U)
{
    return { flatten(f)($0)() }
}

@_transparent public func flatten<T, U>(_ f: (@escaping (T) -> ((Void) -> ((Void) -> ((Void) -> ((Void) -> U)))))) -> ((T) -> U)
{
    return { flatten(f)($0)() }
}

@_transparent public func flatten<T, U>(_ f: (@escaping (T) -> ((Void) -> ((Void) -> ((Void) -> ((Void) -> ((Void) -> U))))))) -> ((T) -> U)
{
    return { flatten(f)($0)() }
}

@_transparent public func inflate<T, U>(_ f: (@escaping (T) -> U)) -> ((T) -> ((Void) -> U))
{
    return { x in { f(x) } }
}

@_transparent public func inflate<T, U>(_ f: (@escaping (T) -> U)) -> ((T) -> ((Void) -> ((Void) -> U)))
{
    return inflate({ x in { f(x) } })
}

@_transparent public func inflate<T, U>(_ f: (@escaping (T) -> U)) -> ((T) -> ((Void) -> ((Void) -> ((Void) -> U))))
{
    return inflate({ x in { f(x) } })
}

@_transparent public func inflate<T, U>(_ f: (@escaping (T) -> U)) -> ((T) -> ((Void) -> ((Void) -> ((Void) -> ((Void) -> U)))))
{
    return inflate({ x in { f(x) } })
}

@_transparent public func inflate<T, U>(_ f: (@escaping (T) -> U)) -> ((T) -> ((Void) -> ((Void) -> ((Void) -> ((Void) -> ((Void) -> U))))))
{
    return inflate({ x in { f(x) } })
}

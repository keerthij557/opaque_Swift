//
// Copyright (c) Vatsal Manot
//

import Swift

public func withoutActuallyEscaping<T, U>(_ closure: ((T) -> U)) -> ((T) -> U)
{
    return -*>closure
}

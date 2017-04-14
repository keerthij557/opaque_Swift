//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol opaque_MutableSequence: opaque_Sequence
{
    mutating func opaque_MutableSequence_iterate<T>(mutating iterator: ((inout Any) throws -> T)) rethrows
}

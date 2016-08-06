//
// Copyright (c) Vatsal Manot
//

import Swift

public typealias MutableIndexable2 = opaque_MutableIndexable & MutableIndexable

public protocol opaque_MutableIndexable: opaque_IndexableBase
{

}

extension opaque_MutableIndexable where Self: MutableIndexable
{

}

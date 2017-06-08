//
// Copyright (c) Vatsal Manot
//

import Swift

public protocol opaque_SetProtocol
{
    func opaque_SetProtocol_isSubset(of _: Any) -> Bool?
    func opaque_SetProtocol_isSuperset(of _: Any) -> Bool?
}

public protocol opaque_SequenceInitiableSetProtocol: opaque_SequenceInitiableSequence
{
    func opaque_SequenceInitiableSetProtocol_intersect(_: Any) -> Any?
    func opaque_SequenceInitiableSetProtocol_union(_: Any) -> Any?
}

public protocol opaque_MutableSetProtocol: opaque_MutableSequence, opaque_SetProtocol
{
    
}

public protocol opaque_ExtensibleSetProtocol: opaque_ExtensibleSequence, opaque_SetProtocol
{
    
}

public protocol opaque_DestructivelyMutableSetProtocol: opaque_DestructivelyMutableSequence, opaque_MutableSetProtocol
{
    
}

public protocol opaque_ResizableSetProtocol: opaque_DestructivelyMutableSetProtocol, opaque_ExtensibleSetProtocol, opaque_ResizableSequence, opaque_SequenceInitiableSetProtocol
{
    
}

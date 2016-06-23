//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnyBidirectionalCollection: MutableForwarder
{
    public typealias Forwarded = opaque_Collection
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(_ forwarded: Forwarded) -> AnyBidirectionalCollection
    {
        return forwarded.opaque_Collection_toAnyBidirectionalCollection() as! AnyBidirectionalCollection
    }
}

extension AnyIterator: MutableForwarder
{
    public typealias Forwarded = opaque_IteratorProtocol
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(_ forwarded: Forwarded) -> AnyIterator
    {
        return forwarded.opaque_IteratorProtocol_toAnyIterator() as! AnyIterator
    }
}

extension AnyRandomAccessCollection: MutableForwarder
{
    public typealias Forwarded = opaque_Collection
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(_ forwarded: Forwarded) -> AnyRandomAccessCollection
    {
        return forwarded.opaque_Collection_toAnyRandomAccessCollection() as! AnyRandomAccessCollection
    }
}

extension AnySequence: MutableForwarder
{
    public typealias Forwarded = opaque_Sequence
    
    public var forwarded: Forwarded
    {
        get
        {
            return self
        }
        
        set
        {
            self = .forward(newValue)
        }
    }
    
    public static func forward(_ forwarded: Forwarded) -> AnySequence
    {
        return forwarded.opaque_Sequence_toAnySequence() as! AnySequence
    }
}

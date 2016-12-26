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
            self = AnyBidirectionalCollection(forwarding: newValue)!
        }
    }
    
    public init?(forwarding forwarded: Forwarded)
    {
        guard let _self = forwarded.opaque_Collection_toAnyBidirectionalCollection() as? AnyBidirectionalCollection else
        {
            return nil
        }
        
        self = _self
    }
}

extension AnyCollection: MutableForwarder
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
            self = AnyCollection(forwarding: newValue)!
        }
    }
    
    public init?(forwarding forwarded: Forwarded)
    {
        guard let _self = forwarded.opaque_Collection_toAnyCollection() as? AnyCollection else
        {
            return nil
        }
        
        self = _self
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
            self = AnyIterator(forwarding: newValue)!
        }
    }
    
    public init?(forwarding forwarded: Forwarded)
    {
        guard let _self = forwarded.opaque_IteratorProtocol_toAnyIterator() as? AnyIterator else
        {
            return nil
        }
        
        self = _self
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
            self = AnyRandomAccessCollection(forwarding: newValue)!
        }
    }
    
    public init?(forwarding forwarded: Forwarded)
    {
        guard let _self = forwarded.opaque_Collection_toAnyRandomAccessCollection() as? AnyRandomAccessCollection else
        {
            return nil
        }
        
        self = _self
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
            self = AnySequence(forwarding: newValue)!
        }
    }
    
    public init?(forwarding forwarded: Forwarded)
    {
        guard let _self = forwarded.opaque_Sequence_toAnySequence() as? AnySequence else
        {
            return nil
        }
        
        self = _self
    }
}

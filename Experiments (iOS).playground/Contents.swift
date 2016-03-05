//
// Copyright (c) Vatsal Manot
//

import OpaqueSwift

public struct GeneratorOnly<G: GeneratorType>: _GeneratorType, GeneratorType
{
    public typealias Value = G
    
    public private(set) var value: Value
    
    public init(_ value: Value)
    {
        self.value = value
    }
    
    public mutating func next() -> G.Element?
    {
        return value.next()
    }
}

public struct FlatSequenceGenerator<G: GeneratorType, T>: _GeneratorType, GeneratorType
{
    public var value: G
    {
        return (workstack.first! as! GeneratorOnly<G>).value
    }
    
    public init(_ value: G)
    {
        self.workstack = [GeneratorOnly(value)]
    }
    
    private var workstack: [_GeneratorType] = []
    
    public mutating func next() -> T?
    {
        workstackLoop: while !workstack.isEmpty
        {
            while let element = workstack[workstack.endIndex - 1]._next()
            {
                if element.dynamicType != T.self
                {
                    if let element = element as? _SequenceType
                    {
                        workstack.append(element._generate())
                        
                        continue workstackLoop
                    }
                }
                
                if let element = element as? T
                {
                    return element
                }
                
                continue
            }
            
            if workstack.count == 1
            {
                return nil
            }
                
            else
            {
                workstack.removeLast()
            }
        }
        
        return nil
    }
}

public struct FlatSequence<S: SequenceType, T>: _SequenceType, SequenceType
{
    public private(set) var value: S
    
    public init(_ value: S)
    {
        self.value = value
    }
    
    public func generate() -> FlatSequenceGenerator<S.Generator, T>
    {
        return FlatSequenceGenerator(value.generate())
    }
}

extension NSArray: _SequenceType
{
    
}

extension NSFastGenerator: _GeneratorType
{
    
}

var x = [1, 2, [3, 4, [5, 6, [7, [8, [9]], [10], 11], 12], 13], [14, 15, [16]]]

Array(FlatSequence<[NSObject], Int>(x)) // [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16]

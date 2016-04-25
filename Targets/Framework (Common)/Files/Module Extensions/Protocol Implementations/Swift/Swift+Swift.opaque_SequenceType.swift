//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence: opaque_SequenceType
{

}

extension GeneratorSequence: opaque_SequenceType
{
    
}

extension LazySequence: opaque_SequenceType
{

}

extension Zip2Sequence: opaque_SequenceType
{
    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return AnySequence(lazy.map({ (($0.0 as Any), ($0.1 as Any)) }))
    }
}

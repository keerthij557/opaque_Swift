//
// Copyright (c) Vatsal Manot
//

import Swift

extension AnySequence: opaque_Sequence
{

}

extension IteratorSequence: opaque_Sequence
{
    
}

extension LazySequence: opaque_Sequence
{

}

extension Zip2Sequence: opaque_Sequence
{
    public func toOpaque() -> AnySequence<(Any, Any)>
    {
        return AnySequence(lazy.map({ (($0.0 as Any), ($0.1 as Any)) }))
    }
}

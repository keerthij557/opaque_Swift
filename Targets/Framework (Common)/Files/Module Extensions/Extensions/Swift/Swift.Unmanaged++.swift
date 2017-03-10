//
// Copyright (c) Vatsal Manot
//

import Swift

extension Unmanaged
{
    @_transparent public static func unretain(_ instance: Instance)
    {
        _ = unretained(instance)
    }
    
    @discardableResult @_transparent public static func unretained(_ instance: Instance) -> Unmanaged
    {
        return passUnretained(instance)
    }

    @_transparent public static func retain(_ instance: Instance)
    {
        _ = retaining(instance)
    }

    @discardableResult @_transparent public static func retaining(_ instance: Instance) -> Unmanaged
    {
        return passUnretained(instance).retain()
    }
    
    @_transparent public static func release(_ instance: Instance)
    {
        _ = releasing(instance)
    }

    @discardableResult @_transparent public static func releasing(_ instance: Instance) -> Unmanaged
    {
        let result = passUnretained(instance)
        
        result.release()
        
        return result
    }
    
    @_transparent public static func autorelease(_ instance: Instance)
    {
        _ = autoreleasing(instance)
    }
    
    @discardableResult @_transparent public static func autoreleasing(_ instance: Instance) -> Unmanaged
    {
        return passUnretained(instance).autorelease()
    }
}

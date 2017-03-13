//
// Copyright (c) Vatsal Manot
//

import Swift

extension CustomDebugStringConvertible
{
    public var debugDescription: String
    {
        let mirror = Mirror(reflecting: self)
        
        var mirrorChildren = Array(mirror.children)
        var superclassMirror = mirror.superclassMirror
        
        repeat
        {
            if let superclassMirrorChildren = superclassMirror?.children
            {
                mirrorChildren += superclassMirrorChildren
            }
            
            superclassMirror = superclassMirror?.superclassMirror
        }
        
        while superclassMirror != nil; let components = mirrorChildren.map
        {
            (label: String?, value: Any) -> String in
            
            if let label = label
            {
                if value is String
                {
                    return "\(label): \"\(value)\""
                }
                    
                else
                {
                    return "\(label): \(value)"
                }
            }
                
            else
            {
                return "\(value)"
            }
        }
        
        if components.count > 0
        {
            return "\(mirror.subjectType)(\(components.joined(separator: ", ")))"
        }
        
        else
        {
            return "\(type(of: self))"
        }
    }
}

//
// Copyright (c) Vatsal Manot
//

import Swift

extension Double: opaque_FloatingPoint
{
    
}

extension Float: opaque_FloatingPoint
{
    
}

#if (arch(i386) || arch(x86_64))
    
extension Float80: opaque_FloatingPoint
{
    
}

#endif

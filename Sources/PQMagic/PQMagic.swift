
import Foundation

public class PQMagic {
    
    public init() {
        
    }
    
    public func invoke(initial: String, target: String) -> Bool {
        let regex = #"[PQ]+"#
        
        if initial.range(of: regex, options: .regularExpression) == nil { return false }
        if target.range(of: regex, options: .regularExpression) == nil { return false }
        
        if initial == target { return true }
        
        if initial.count >= target.count { return false }
        
        return p(i: initial, t: target) || q(i: initial, t: target)
    }
    
    private func p(i: String, t: String) -> Bool {
        let n = i.appending("P")
        
        if n.count == t.count {
            return n == t
        }
        
        return p(i: n, t: t) || q(i: n, t: t)
    }
    
    private func q(i: String, t: String) -> Bool {
        let n = String(i.reversed()).appending("Q")
        
        if n.count == t.count {
            return n == t
        }
        
        return p(i: n, t: t) || q(i: n, t: t)
    }
}

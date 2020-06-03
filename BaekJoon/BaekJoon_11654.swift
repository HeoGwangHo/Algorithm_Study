// MARK: 아스키 코드
import Foundation
extension StringProtocol {
    var ascii: [UInt32] {
        return unicodeScalars.compactMap { $0.isASCII ? $0.value : nil }
    }
}

extension Character
{
    var ascii: UInt32? {
        return String(self).ascii.first
    }
}

print((readLine() ?? "").ascii.first ?? 0)

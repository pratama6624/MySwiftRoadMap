// Extension
// Adding more functionality
import Foundation

extension String {
    func removeWhiteSpace() -> String {
        return self.replacingOccurrences(of: " ", with: "")
    }
}

let alphabet = "A B C D E F"
print(alphabet)
print(alphabet.removeWhiteSpace())

// Simple bro

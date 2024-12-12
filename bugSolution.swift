func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5) // Correct usage
print(area) // Output: 50.0

// Improved error handling using optional values:
func calculateAreaImproved(length: Double?, width: Double?) -> Double? {
    guard let length = length, let width = width else {
        return nil // Handle cases where length or width are nil
    }
    return length * width
}

let area3 = calculateAreaImproved(length: 10, width: 5)
print(area3) // Output: Optional(50.0)

let area4 = calculateAreaImproved(length: 10, width: nil)
print(area4) // Output: nil

// Example of better error handling with a different return type
func calculateAreaWithResult(length: Double?, width: Double?) -> Result<Double, Error> {
    guard let length = length, let width = width else {
        return .failure(NSError(domain: "Invalid Input", code: 1, userInfo: nil))
    }
    return .success(length * width)
}
let area5 = calculateAreaWithResult(length: 10, width: 5)
print(area5) // Output: success(50.0)
let area6 = calculateAreaWithResult(length: 10, width: nil)
print(area6) //Output: failure(__NSCFError 0x60000308b280 {NSLocalizedDescription = Invalid Input})
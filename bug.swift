func calculateArea(length: Double, width: Double) -> Double {
    return length * width
}

let area = calculateArea(length: 10, width: 5) // Correct usage
print(area) // Output: 50.0

let area2 = calculateArea(length: 10, width: "5") // Incorrect usage: width is a String
print(area2) // Compile-time error: Cannot convert value of type 'String' to expected argument type 'Double'
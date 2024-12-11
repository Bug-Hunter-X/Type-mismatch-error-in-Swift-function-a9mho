func calculateArea(width: Double, height: Double) -> Double {
    return width * height
}

let area = calculateArea(width: 10, height: 5) // Correct usage
print(area) // Output: 50.0

let heightString = "5"
let heightDouble = Double(heightString)! // Convert String to Double

let area2 = calculateArea(width: 10, height: heightDouble) // Correct usage after conversion
print(area2) // Output: 50.0
//Error handling for String to Double conversion

func calculateAreaWithHandling(width: Double, heightString: String) -> Double? {
    if let height = Double(heightString) {
        return width * height
    } else {
        print("Error: Invalid height string")
        return nil
    }
}

if let safeArea = calculateAreaWithHandling(width: 10, heightString: "5"){
    print("Area:",safeArea)
}

if let safeArea2 = calculateAreaWithHandling(width: 10, heightString: "abc"){
    print("Area:",safeArea2)
} else{
    print("Invalid height string provided")
}
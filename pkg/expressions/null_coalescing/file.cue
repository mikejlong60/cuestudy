#pets: ["Cat", "Mouse", "Dog"]

// Guard against out of bounds list indexes.
pet0: *#pets[0] | "Pet not found"
pet5: *#pets[5] | "Pet not found"

#nums: [7, "8", "9"]

// Perform a type check.
num0: *(#nums[0] & int) | "Not an integer"
num1: *(#nums[1] & int) | "Not an integer"
/*:
 # iOS Development
 ## Quiz 3
 
 ### Instructions
 * Enter your answer **BELOW** each question.
 * Make sure you answer **EVERY** question, some later questions may require the results from previous questions.
 * Read each question carefully, and answer the best you can.
 * For questions that require code, yours **MUST** compile.  If you can't get it to work, put it in a comment block and you may get partial credit.
 * For questions that are text answers, put your answers in comments (single line or block).
 * When you are complete, save a copy of this playground named with **YOUR NAME**.
 * Email your quiz to me by the end of class
 * If you have any questions about the instructions or the test, please ask me for assistance.
 */
// LEAVE THIS ALONE (You may need the next couple of lines for your code to work)
import UIKit
import Foundation
// LEAVE THIS ALONE
//: ### Start Here
//: Type your **first** and **last** name below as a comment
// Matthew Templeton

//: ### Question 1
//: Declare a function that takes an Int as an argument and returns the String equivalent
func practice( number: Int) -> String {
    return String(number)
}

var number = 2
print( practice( number: number ) ) // verifies content of answer

//: ### Question 2
//: Declare a function that takes two Int parameters and returns the value of the two Ints added together *as a String*
func question2( int1: Int , int2: Int) -> String{
    let value = int1 + int2
    return String(value)
}
print(question2(int1: 2, int2: 5)) // verifies content of answer

//: ### Question 3
//: What is the definition of a Closure in Swift
/* Closures are self-contained blocks of functionality that can be passed around and used in your code.
   Similar to blocks in C and Objective-C and to lambdas.
   Closures can capture and store references to any constants and variables from the context in which they
   are defined. This is known as closing over those constants and variables.
 */

//: ### Question 4
//: Create a list of strings and sort them in ascending order by passing a Closure into the .sorted method
let names = ["Mark", "Steve", "John", "Amelia", "Evan", "Toblerone", "Fred"]

func ascending( s1: String, s2: String) -> Bool {
    return s1 < s2
}
var ascendingNames = names.sorted(by: ascending)
print(ascendingNames) // verifies contents of answer
// would have used simpler method but guide specifies the longer method as the passing closure example

//: ### Question 5
//: Explain how Closures *capture* values and why you shouldn't *capture* instances of class objects
//if you caputre instances of class objects then you are at risk of a memory leak and also locking yourself out of that object you need to use
//closures caputre by reference and if you caputre a class instance or object you have created a strong cycle which are two references holding each other up and the strong cycle will need to be broken up
//: ### Question 6
//: Declare an enumeration that includes all of the classes you are currently taking (add a couple if you only have one...)
enum Classes {
    case WindowsLan
    case Cryptography
    case Database2
    case Forensics1
    case RPG1
    case IOSapplications
}
//: ### Question 7
//: Declare a class called Student which has name, major, and GPA properties...  use appropriate data types for the properties
class Student {
    var name: String?
    var major: String?
    var GPA = 0.0
}

//: ### Question 8
//: Declare an instance of your class from Question 7 and assign it some values for its properties
let someStudent = Student()
someStudent.name = "Matthew"
someStudent.major = "CIS"
someStudent.GPA = 3.9
print(someStudent.name!, someStudent.major!, someStudent.GPA) // verifies functionality for answer

//: ### Question 9
//: Describe whether classes, structs, and enums are value types or reference types and explain the difference.
// Structs and Enums are value types. This is a type whose value is copied when it’s assigned to a variable or constant, or when it’s passed to a function.
// Classes are reference types. These are not copied when they are assigned to a variable or constant, or when they are passed to a function. Rather than a copy, a reference to the same existing instance is used.

//: ### Question 10
//: Why would you choose to use a struct over a class?  Be as specific as possible please.
// As a general guideline, you would prefer structures because they’re easier to understand their reasoning, they use common kinds of data and concepts, the guide actually says they should be the default choice, you use classes when they’re appropriate or necessary. In practice, this means most of the custom data types you define will be structures and enumerations.

//: ### Bonus Question
//: Create a class that inherits from the class in Question 7 and add an array to hold grades, and a function that calculates a GPA from the array
class gradeDetails: Student{
    var gradeArray: [String] = []
}
let jimmyGrades = gradeDetails()

    jimmyGrades.name = "Jimmy"
    jimmyGrades.major = "CIS"
    jimmyGrades.gradeArray = ["A", "B", "A", "B", "C"]

func gpa(gradeArray: [String]) -> Double{
    // simple gpa calculation without factoring credit hour detail
    var gpaValue = 0.0
    for letter in gradeArray {
        if letter == "A"{
            gpaValue += 4 }
        if letter == "B" {
            gpaValue += 3 }
        if letter == "C" {
            gpaValue += 2 }
        if letter == "D" {
            gpaValue += 1}
        
    }
    let divisor = gradeArray.capacity
    gpaValue = gpaValue / Double(divisor)
    return gpaValue
}

jimmyGrades.GPA = gpa(gradeArray: jimmyGrades.gradeArray)
print(jimmyGrades.GPA)




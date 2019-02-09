import UIKit

/*
 Blackburn, Sydney
 CS646_00
 Assignment #1
 Fall 2018
 */



/*
    Problem #1
 
func squaredSums(array: [Int]) -> Int {
    var sum: Int = 0
    array.forEach { x in
        sum += x*x
    }
    return sum
}
squaredSums(array: [1,2,3])
*/


/*
    Problem #2
 
func squaredSums2(array: [Int]) -> Int {
    var sum: Int = 0
    array.forEach { x in
        if x % 2 == 0 {
            sum += x*x
        }
    }
    return sum
}
squaredSums2(array: [1,2,3])
*/

/*
    Problem #3
 

func squaredSums3(array: [Int?]) -> Int {
    var sum: Int = 0
    array.forEach { x in
        if let number = x {
            if (number % 2 == 0) {
                sum += number*number
            }
        }
    }
    return sum
}
squaredSums3(array: [1,2,3,nil])
 */


/*
    Problem #4
 
func squaredSums4(array: Array<Int>?) -> Int? {
    var sum: Int?
    if array != nil {
        sum = 0
        array!.forEach { x in
            if x % 2 == 0 {
                sum = sum! + x*x
            }
        }
    }
    return sum
}
squaredSums4(array: [1,2,3])
squaredSums4(array: nil)
*/



/*    Problem #5
 
func squaredSums5(array: [Int]) -> Int {
    return array.filter{ $0 % 2 == 0 }.reduce(0){ $0 + $1*$1 }
}
squaredSums5(array: [3,2,3,4])
*/


/*
    Problem #6
 
func squaredSums6<T: Collection>(collection: T) -> Int {
    var array = Array<Int>()
    if let newCollection = collection as? Dictionary<AnyHashable, Int> {
        array = newCollection.flatMap( {$0.1} )
    } else {
        array = collection.flatMap({ $0 as? Int })
    }
    return array.filter{ $0 % 2 == 0 }.reduce(0){ $0 + $1*$1 }
}
let oddDigits: Set<Int> = [1,2,3]
let evenDigits: Array<Int> = [1,2,3]
let siblings: Dictionary<String,Int> = ["Jordan": 1, "Sydney": 2, "Christopher": 3]
squaredSums6(collection: oddDigits)
squaredSums6(collection: evenDigits)
squaredSums6(collection: siblings)
*/

/*
    Problem #7
 
struct Student {
    let name: String
    let red_id: Int
    let units_taken: Double
    let GPA: Double
    func priority() -> Double {
        return units_taken * GPA
    }
}
var student = Student(name: "Sydney", red_id: 816557736, units_taken: 153.0, GPA: 3.49)
var student2 = Student(name: "Christopher", red_id: 123456789, units_taken: 150.0, GPA: 3.73)
var student3 = Student(name: "Jess", red_id: 098765432, units_taken: 124.0, GPA: 3.21)
*/


/*
    Problem #8
 
class PriorityQueue<T>{
    var queue = [Double: T]()
    func add(key: Double, value: T) {
        queue[key] = value
    }
    func first() -> T? {
        if queue.isEmpty {
            return nil
        }
        let keys = queue.keys.sorted(by: >)
        return queue[keys[0]]
    }
    func removeFirst() -> T? {
        if queue.isEmpty {
            return nil
        }
        let keys = queue.keys.sorted(by: >)
        let key = keys[0]
        let removed = queue.removeValue(forKey: key)
        return removed!
    }
}
var pQueue = PriorityQueue<Student>()
pQueue.add(key: student.priority(), value: student)
pQueue.add(key: student2.priority(), value: student2)
pQueue.add(key: student3.priority(), value: student3)
pQueue.first()
pQueue.removeFirst()
*/

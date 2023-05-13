// //----< iostream >--------------------------//
// using std::cout;
// using std::cin;
// using std::endl;
// using std::ostream;
// using std::istream;
//
// //----< cstdio >----------------------------//
// using std::printf;
// using std::fprintf;
// using std::sprintf;
// using std::snprintf;
//
// //----< iomanip >---------------------------//
// using std::setprecision;
// using std::setw;
//
// //----< ios >-------------------------------//
// using std::hex;
// using std::dec;
// using std::oct;
// using std::fixed;
//
// //----< sstream >---------------------------//
// using std::stringstream;
// using std::ostringstream;
// using std::istringstream;
//
// //----< fstream >---------------------------//
// using std::ofstream;
// using std::ifstream;
//

// using std::to_string;
// SWIFT_USAGE:
//     let number = 42
//     let numberString = String( number ) // Creates a string representation of the number
//     print( numberString ) // Output: "42"
//
//     let name = "John"
//     let nameString = String( describing: name ) // Creates a string representation of the name
//     print( nameString ) // Output: "John"
//
//     let array = [ 1, 2, 3 ]
//     let arrayString = String( describing: array ) // Creates a string representation of the array
//     print( arrayString ) // Output: "[1, 2, 3]"
//
//     class Person {
//         let name: String
//         let age: Int
//         
//         init( name: String, age: Int ) {
//             self.name = name
//             self.age = age
//         }
//         
//         var description: String {
//             return "Person - Name: \(name), Age: \(age)"
//         }
//     }
//
//     let person = Person( name: "John", age: 25 )
//     let personString = String( describing: person )
//     print( personString ) // Output: "Person - Name: John, Age: 25"
//

// using std::stoi;                            // PREFERRED stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
// SWIFT_USAGE:
//     let value = Int( "42" )
//     print( value )
//
//     let value = Int32( "42" )
//     print( value )
//

// using std::stol;                            // PREFERRED stol() over atol() since stoi() allows conversion from binary & hex strings to int.
// SWIFT_USAGE:
//     let value = Int64( "42" )
//     print( value )
//
//     let value = Int( "42" )
//     print( value )
//

import BigInt
// using std::stoll;                           // PREFERRED stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
// SWIFT_USAGE:
//     let value = BigInt("1234567890123456789")
//     print( value )
//

// using std::atoi;                            // DEPRECATED: Preferred stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
// SWIFT_USAGE:
//     let value = Int( "42" )
//     print( value )
//
//     let value = Int32( "42" )
//     print( value )
//

// using std::atol;                            // DEPRECATED: Preferred stol() over atol() since stoi() allows conversion from binary & hex strings to int.
// SWIFT_USAGE:
//     let value = Int( "42" )
//     print( value )
//
//     let value = Int32( "42" )
//     print( value )
//

// using std::atoll;                           // DEPRECATED: Preferred stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
// SWIFT_USAGE:
//     let value = BigInt("1234567890123456789")
//     print( value )
//

import Foundation
//----< nlohmann/json.hpp >-----------------//
// using json = nlohmann::json;
// SWIFT_USAGE:
//     class Person: Codable {
//         let name: String
//         let age: Int
//         
//         init(name: String, age: Int) {
//             self.name = name
//             self.age = age
//         }
//     }
//
//     // Encoding JSON string from class instance
//     let person = Person(name: "John", age: 30)
//     let encoder = JSONEncoder()
//     let personJSON: Data
//     do {
//         personJSON = try encoder.encode(person)
//         if let jsonString = String(data: personJSON, encoding: .utf8) {
//             print(jsonString)
//         }
//     } catch {
//         fatalError("Failed to encode person to JSON: \(error)")
//     }
//
//     // Decoding JSON string into class instance
//     let decoder = JSONDecoder()
//     do {
//         let decodedPerson = try decoder.decode(Person.self, from: personJSON)
//         print("Name: \(decodedPerson.name), Age: \(decodedPerson.age)")
//     } catch {
//         fatalError("Failed to decode JSON into person: \(error)")
//     }
//

import NIO
import MySQLNIO
// NOTES:
// Connecting to a database programmatically involves the following steps:
//     1. Importing the appropriate database driver package in your
//        programming language.
//        => For example, in Golang, you would import the "database/sql"
//           package and the package for your specific database driver (e.g.
//           "github.com/go-sql-driver/mysql" for MySQL).
//     2. Creating a connection string that contains the necessary information
//        to connect to the database.
//        => This usually includes the database server address, the username
//           and password to authenticate with the database, and any other
//           relevant options or parameters.
//     3. Opening a connection to the database using the connection string and
//        the appropriate driver function.
//        => In most programming languages, this involves calling a specific
//           function or method to establish a connection.
//     4. Executing queries or statements on the database as needed to
//        retrieve or modify data.
//     5. Closing the database connection when it is no longer needed.
//
// SWIFT_USAGE:
//     let group = MultiThreadedEventLoopGroup(numberOfThreads: 1)
//     defer { try! group.syncShutdownGracefully() }
//
//     let configuration = MySQLConfiguration(
//         hostname: "hostname",
//         username: "username",
//         password: "password",
//         database: "databasename"
//     )
//
//     let eventLoop = group.next()
//     let connection = MySQLConnection.connect(configuration: configuration, on: eventLoop).wait()
//
//     let query = """
//         SELECT name, age FROM users WHERE age > ?
//         """
//
//     let result = connection.simpleQuery(query, [25]).wait()
//     let rows = try result.get()
//     for row in rows {
//         guard let name = row[0]?.string, let age = row[1]?.int else {
//             fatalError("Error extracting values from row")
//         }
//         print("Name: \(name), Age: \(age)")
//     }
//
//     let tx = connection.startTransaction().wait()
//
//     let updateQuery = """
//         UPDATE users SET age = ? WHERE name = ?
//         """
//     let deleteQuery = """
//         DELETE FROM users WHERE age < ?
//         """
//
//     do {
//         try tx.simpleQuery(updateQuery, [30, "John"]).wait()
//         try tx.simpleQuery(deleteQuery, [30]).wait()
//         try tx.commit().wait()
//         print("Successfully executed transactional queries!")
//     } catch {
//         tx.rollback().whenComplete { _ in
//             fatalError("Error executing transactional queries: \(error)")
//         }
//     }
//
//     connection.close()
//     try! group.syncShutdownGracefully()
//

// //----< string >----------------------------//
// using std::getline;
// SWIFT_USAGE:
//     var input = ""
//     while let line = readLine() {
//         input += line
//     }
//     print("Input: \(input)")
//
//     let lines = input.components(separatedBy: CharacterSet.newlines)
//     for line in lines {
//         print(line)
//     }
//

// using std::string;

import "math"
// //----< cmath >-----------------------------//
// using std::sqrt;
// SWIFT_USAGE:
//     let number = 9.0
//     let result = sqrt(number)
//
//     print(result)
//

// using std::pow;
// SWIFT_USAGE:
//     print(pow(7, 2))
//     print(pow(7, 2) == 7 * 7)
//     print(pow(2, -1))
//     print(pow(2.0, 0.5))
//
//     print(pow(10, 2))
//     print(pow(10, 5) == 100000)
//

import "math/bits"
// using std::div;
// using std::ldiv;
// using std::lldiv;
// SWIFT_USAGE:
//     let dividend = 7
//     let divisor = 3
//     let (quo, rem) = dividend.quotientAndRemainder(dividingBy: divisor)
//     print("quo: \(quo) ; rem: \(rem)")
//
//     let dividend: Int32 = 7
//     let divisor: Int32 = 3
//     let (quo, rem) = dividend.quotientAndRemainder(dividingBy: divisor)
//     print("quo: \(quo) ; rem: \(rem)")
//
//     let dividend: Int64 = 7
//     let divisor: Int64 = 3
//     let (quo, rem) = dividend.quotientAndRemainder(dividingBy: divisor)
//     print("quo: \(quo) ; rem: \(rem)")
//

// using std::log;                             // log( <arg> )
// SWIFT_USAGE:
//     print(log(10))      // Output: 2.302585092994046
//     print(log2(10))     // Output: 3.321928094887362
//     print(log10(10))    // Output: 1.0
//

// using std::exp;                             // e ^ <arg>
//

// using std::abs;
// using std::fabs;
// SWIFT_USAGE:
//     print(abs(6))       // Output: 6
//     print(abs(6.0))     // Output: 6.0
//     print(abs(-6))      // Output: 6
//     print(abs(-6.0))    // Output: 6.0
//

// using std::floor;                           // Round down to nearest integer double
// using std::ceil;                            // Round up to nearest integer double
// using std::trunc;                           // Truncate the fractional part to get the integer part
// using std::round;                           // Round to nearest integer double
//
// //----< cstdlib >---------------------------//
// using std::rand;
// using std::srand;
//

// //----< ctime >-----------------------------//
// using std::time;
//
// //----< functional >------------------------//
// using std::hash;
// using std::greater;                         // lhs > rhs. Used for MinPQ
// using std::less;                            // lhs < rhs. Used for MaxPQ. Default for priority_queue<>
// using std::less_equal;
// using std::greater_equal;
// using std::bind;
// using namespace std::placeholders;          // placeholders ( _1, _2, ..., _N ) for std::bind
//

// //----< array >-----------------------------//
// using std::array;                           // Fixed & Unordered Array
// //----< vector >----------------------------//
// using std::vector;
// SWIFT_USAGE:
//     var l: [Int] = []
//     var l: [Int] = [1, 1, 1, 1, 1]
//     var l = [Int]()
//
//     var l = [Int](repeating: 0, count: 0)         // Create an array with a repeating initial value and count
//     var l = [Int](repeating: 0, count: 5)         // Create an array with a repeating initial value and count
//
//     var l = Array<Int>(repeating: 0, count: 5)    // Another way to create an array with a repeating initial value and count
//     var l = Array<Int>(0...4)                     // Create an array from a range
//
//     var l = (0...4).map { $0 }                    // Create an array using map function
//     var l = (0..<10).map { $0 }                   // Create an array using map function with a range
//
//     var l = stride(from: 0, through: 4, by: 1).map { $0 }   // Create an array using stride and map
//     print(l)
//

// //----< list >------------------------------//
// using std::list;                            // Doubly-Linked List with size() ( O( 1 ) )
//

// //----< forward_list >----------------------//
// using std::forward_list;                    // Singly-Linked List without size() function ( so O( N ) if we need to get size() )
// SWIFT_USAGE:
//     var l: [Int] = []
//     var l: [Int] = Array(repeating: 0, count: 100)
//     var l: [Int] = [1, 2, 3]
//     var l: [Int] = Array((1, 2, 3))
//     var l: [String] = Array("ABC")
//
//     var l: [[Int]] = Array(repeating: Array(repeating: 0, count: 2), count: 2)
//     var l: [[String]] = Array(repeating: Array(repeating: "A", count: 2), count: 2)
//

// //----< map >-------------------------------//
// using std::map;                             // Ordered Map (Red-Black Tree)
// SWIFT_USAGE:
//     let d = ["b": 2, "a": 1, "c": 3]
//     for key in d.keys.sorted() {
//         if let value = d[key] {
//             print("Key: \(key), Value: \(value)")
//         }
//     }
//
//     let d = ["b": 2, "a": 1, "c": 3]
//     let sortedArr = d.sorted { $0.key < $1.key }
//     let sortedDict = Dictionary(uniqueKeysWithValues: sortedArr)
//

// using std::multimap;                        // Ordered Map (Red-Black Tree) & Allow duplicated keys
// SWIFT_USAGE:
//     var d: [String: [Int]] = [:]
//     var ds: [(String, [Int])] = d.sorted { $0.key < $1.key }
//     func insert(d: [String: [Int]], _ key: Key, _ value: Value) {
//         if d[key] == nil {
//             d[key] = [value]
//         } else {
//             d[key]?.append(value)
//         }
//     }
//
//     func find(d: [String: [Int]], _ key: Key) -> [Value]? {
//         return d[key]
//     }
//
//     func erase(d: [String: [Int]], _ key: Key) {
//         d[key] = nil
//     }
//
//     // Example usage
//     insert("key1", "value1")
//     insert("key2", "value2")
//     insert("key1", "value3")
//
//     print(find("key1"))  // Output: Optional(["value1", "value3"])
//     print(find("key2"))  // Output: Optional(["value2"])
//
//     erase("key1")
//
//     print(find("key1"))  // Output: nil
//

// //----< unordered_map >---------------------//
// using std::unordered_map;                   // HashMap (SeparateChainingHashST)
// SWIFT_USAGE:
//     var d: [String: Int] = ["key": value]
//

// using std::unordered_multimap;              // Ordered Map (Red-Black Tree) & Allow duplicated keys
// SWIFT_USAGE:
//     let d: [String: [Int]] = ["key": [val1, val2]]
//

// //----< set >-------------------------------//
// using std::set;                             // Ordered Set (Red-Black Tree)
// SWIFT_USAGE:
//     let s: Set<Int> = [5, 2, 8, 3, 1]
//     let sortedArray = s.sorted()
//     print(sortedArray)
//
//     let s: Set<Int> = [5, 2, 8, 3, 1]
//     let sortedArray = s.sorted()
//     for element in sortedArray {
//         print(element)
//     }
//
//     if s.contains(6) {
//         print("Value 6 exists in the set")
//     } else {
//         print("Value 6 does not exist in the set")
//     }
//

// using std::multiset;                        // Ordered Set (Red-Black Tree) & Allow duplicated keys
// SWIFT_USAGE:
//     var s: [String: Int] = ["key1": count1, "key2": count2]
//     s["5"] = 1
//     s["4"] = 1
//     s["1"] = 1
//     s["1"] = nil
//     s["4"] = nil
//     s["6"] = nil  // no effects if key doesn't exist'
//
//     let sortedKeys = s.keys.sorted()
//
//     for key in sortedKeys {
//         if let value = s[key] {
//             print("\(key): \(value)")
//         }
//     }
//
//     if let _ = d["key1"] {
//         print("Key 'key1' exists in the dictionary")
//     } else {
//         print("Key 'key1' does not exist in the dictionary")
//     }
//
//     if d.contains(where: { $0.key == "key1" }) {
//         print("Key 'key1' exists in the dictionary")
//     } else {
//         print("Key 'key1' does not exist in the dictionary")
//     }
//

// //----< unordered_set >---------------------//
// using std::unordered_set;                   // HashSet (SeparateChainingHashST)
// SWIFT_USAGE:
//     var s: Set<Int> = [5, 2, 8, 3, 1]
//     print(sortedArray)
//
//     s.insert(5)
//     s.insert(4)
//     s.remove(1)
//     s.remove(4)
//
//     for element in sortedArray {
//         print(element)
//     }
//
//     if s.contains(6) {
//         print("Value 6 exists in the set")
//     } else {
//         print("Value 6 does not exist in the set")
//     }
//

// using std::unordered_multiset;              // HashSet (SeparateChainingHashST) & Allow duplicated keys
// SWIFT_USAGE:
//     var ms: [String: Int] = [:] // Dictionary to simulate unordered_multiset
//
//     // Insert operation
//     ms["apple", default: 0] += 1
//     ms["banana", default: 0] += 1
//     ms["apple", default: 0] += 1
//
//     // Edit operation (increment count)
//     ms["banana"] = 3
//
//     // Delete operation
//     ms.removeValue(forKey: "apple")
//
//     // Contains operation
//     let containsBanana = ms["banana"] != nil
//     let containsApple = ms["apple"] != nil
//
//     // Iterate over the multiset
//     for (element, count) in ms {
//         print("\(element): \(count)")
//     }
//
//     print("Contains banana: \(containsBanana)") // Output: true
//     print("Contains apple: \(containsApple)") // Output: false
//

// //----< deque >-----------------------------//
// using std::deque;                           // Vector of fixed-size Vectors: 1 fixed-size vector for each end of the deque
// SWIFT_USAGE:
//     Implement Doubly-Linked List.
//

// //----< queue >-----------------------------//
// using std::queue;                           // Non-Iterable & Use std::deque as underlying data structure
// SWIFT_USAGE:
//     Implement Singly-Linked List.
//

import "container/heap"
// using std::priority_queue;                  // MaxPQ (MaxHeap) & Non-Iterable.
// //                                          // => Pass std::greater<> as template params to create MinPQ (MinHeap)
// SWIFT_USAGE:
//     N/A - Have to Sort the Collection.
//

// //----< stack >-----------------------------//
// using std::stack;                           // Non-Iterable & Use std::deque as underlying data structure
// SWIFT_USAGE:
//     var st: [Int] = []
//
//     // push elements onto the stack
//     st.append(1)
//     st.append(2)
//     st.append(3)
//
//     // pop an element from the stack
//     if let poppedElement = st.popLast() {
//         print("Popped element: \(poppedElement)") // Output: Popped element: 3
//     }
//
//     // peek at the top element of the stack
//     if let topElement = st.last {
//         print("Top element: \(topElement)") // Output: Top element: 2
//     }
//
//     // check if the stack is empty
//     if st.isEmpty {
//         print("Stack is empty")
//     } else {
//         print("Stack is not empty")
//     }
//

// from typing import Tuple
// //----< tuple >-----------------------------//
// using std::tuple;                           // Non-Iterable & Use std::pair as underlying data structure
// using std::get;                             // Access & Set element in tuple using get< index >( tuple_var )
// PYTHON_USAGE:
//     t : Tuple[ str, int ] = ( "ABC", 1 )
//     t : Tuple[ int, ... ] = ( 1, 2, 3 )
//     t : Tuple[ int ] = ( 1 )
//     t : Tuple[ str, ... ] = ( "A", "B", "C" )
//     t : Tuple[ str ] = ( "A" )
//     t : Tuple[ str, int ] = tuple( [ "ABC", 1 ] )
//     if t[ 0 ] == "ABC":
//         print( t[ 1 ] )
//
//
// [ UNSUPPORTED_IN_PYTHON ]//----< bitset >----------------------------//
// [ UNSUPPORTED_IN_PYTHON ] using std::bitset;
//
// from typing import Iterable
// from typing import Iterator
// //----< iterator >--------------------------//
// using std::next;                            // Return an advanced iter without changing original iter
// PYTHON_USAGE:
//     iterable: Tuple[ int ] = tuple( [ 1, 2, 3, 4 ] )
//     it = iter( iterable )
//     for item in it:
//         print( item )
//
//
// [ UNSUPPORTED_IN_PYTHON ] using std::prev;                            // Return an decremented iter without changing original iter
// [ UNSUPPORTED_IN_PYTHON ] using std::distance;                        // Calculate distance between 2 iterators
// [ UNSUPPORTED_IN_PYTHON ] using std::inserter;                        // Insert element into first arg starting from position in second arg
//

// //----< optional >--------------------------//
// using std::optional;                        // Expresses that a value may or may not be present
// SWIFT_USAGE:
//     var optionalValue: Optional<Int>
//     var optionalValue = Optional<Int>(nil)
//     var optionalValue = Int?(nil)
//
//     var optionalValue: Int?    // Preferred!!!
//
//     // Assign a value to the optional
//     optionalValue = 42
//
//     // Check if the optional has a value
//     if let value = optionalValue {
//         print("Optional value: \(value)")
//     } else {
//         print("Optional value is nil")
//     }
//
//     // Reset the optional to nil
//     optionalValue = nil
//
//     // Check if the optional is nil
//     if optionalValue == nil {
//         print("Optional value is nil")
//     }
//

// //----< utility >---------------------------//
// using std::pair;
// using std::make_pair;
// using std::move;                            // Move resources between objects - typically used with std::unique_ptr<T>
// PYTHON_USAGE:
//     t : Tuple[ str, int ] = ( "ABC", 1 )
//     t : Tuple[ int, ... ] = ( 1, 2, 3 )
//     t : Tuple[ int ] = ( 1 )
//     t : Tuple[ str, ... ] = ( "A", "B", "C" )
//     t : Tuple[ str ] = ( "A" )
//     t : Tuple[ str, int ] = tuple( [ "ABC", 1 ] )
//     if t[ 0 ] == "ABC":
//         print( t[ 1 ] )
//
//
// //----< algorithm >-------------------------//
// using std::fill;
// PYTHON_USAGE:
//     a : List[ int ] = [ 0 ] * 100
//     a[ 2:12 ] = [ 1 ] * 10
//     a[ 2:12 ] = [ 2 ] * 20
//     a[ 2:12 ] = [ 3 ] * 5
//

// using std::max;
// GO_USAGE:
//     var l []int = []int{ 1, 2, 3, 4, 5, 6 }
//     l := []int{ 1, 2, 3, 4, 5, 6 }
//
//     maxNum := - math.MaxFloat64
//     maxNum := - math.MaxFloat32
//     maxNum := math.MinInt
//     maxNum := math.MinInt8
//     maxNum := math.MinInt16
//     maxNum := math.MinInt32
//     maxNum := math.MinInt64
//     for _, num := range l {
//         maxNum = int( math.Max( float64( maxNum ), float64( num ) ) )
//     }
//     fmt.Println( maxNum )  -- output: 6
//

// using std::min;
// GO_USAGE:
//     var l []int = []int{ 1, 2, 3, 4, 5, 6 }
//     l := []int{ 1, 2, 3, 4, 5, 6 }
//
//     minNum := math.MaxFloat64
//     minNum := math.MaxFloat32
//     minNum := math.MaxInt
//     minNum := math.MaxInt8
//     minNum := math.MaxInt16
//     minNum := math.MaxInt32
//     minNum := math.MaxInt64
//     minNum := math.MaxUint
//     minNum := math.MaxUint8
//     minNum := math.MaxUint16
//     minNum := math.MaxUint32
//     minNum := math.MaxUint64
//
//     for _, num := range l {
//         minNum = int( math.Min( float64( minNum ), float64( num ) ) )
//     }
//     fmt.Println( minNum )  -- output: 1
//

// using std::find;
// PYTHON_USAGE:
//     l : List[ int ] = [ 1, 2, 3, 3, 3, 3, 4, 5 ]
//     print( l.index( 3 ) )     -- output: 2
//     print( l.index( 3, 4 ) )  -- output: 4
//
//     t : Tuple[ int, ... ] = ( 1, 2, 3, 3, 3, 3, 4, 5 )
//     print( t.index( 3 ) )        -- output: 2
//     print( t.index( 3, 4 ) )     -- output: 4
//
//     s : str = "ABCCCCCD"
//     print( s.index( "C" ) )      -- output: 2
//     print( s.index( "C", 4 ) )   -- output: 4
//
//
// using std::reverse;
// PYTHON_USAGE:
// REVERSE_ALL:
//     a : List[ int ] = [ 1, 2, 3, 4, 5 ]
//     a.reverse()
//     print( a )
//
//     a = list( reversed( a ) )
//     print( a )
//
//     t : Tuple[ int, ... ] = ( 1, 2, 3, 4, 5 )
//     t = tuple( reversed( t ) )
//     print( t )
//
//     s : str = "ABC"
//     s = "".join( reversed( s ) )
//     print( s )
//
//
// REVERSE_PARTIAL:
//     a : List[ int ] = [ 1, 2, 3, 4, 5 ]
//     sa = a[ 1:4 ]
//     sa.reverse()
//     print( sa )
//
//     sa = a[ 1:4 ]
//     sa = list( reversed( sa ) )
//     print( sa )
//
//     t : Tuple[ int, ... ] = ( 1, 2, 3, 4, 5 )
//     st = t[ 1:4 ]
//     st = tuple( reversed( st ) )
//     print( st )
//
//     s : str = "ABCDEF"
//     ss = s[ 1:4 ]
//     ss = "".join( reversed( ss ) )
//     print( ss )
//
//
// using std::reduce;                          // Add / Concatenate together all elements of iterator range
// using std::accumulate;                      // Add / Concatenate together all elements of iterator range
// PYTHON_USAGE:
//     l : List[ int ] = [ 1, 2, 3, 4, 5 ]
//     print( sum( l ) )  -- output: 15
//
//     l : List[ str ] = [ "A", "B", "C" ]
//     print( "".join( l ) )  -- output: "ABC"
//
//
//
// using std::sort;                            // Intro-Sort (QuickSort => HeapSort when recursion depth exceeds certain level), NOT IN-PLACE & NOT STABLE
// PYTHON_USAGE:
//     a : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
//     a.sort( reverse = False, key = myFunc )         -- IN-PLACE & STABLE
//     a.sort( reverse = False, key = lambda x: x )         -- IN-PLACE & STABLE
//     print( a )
//
//     a : List[ List[ int ] ] = [ [ 1, 3 ], [ 3, 5 ], [ 3, 3 ], [ 5, 3 ], [ 2, 2 ] ]
//     a.sort( reverse = False )  -- output: [ [ 1, 3 ], [ 2, 2 ], [ 3, 3 ], [ 3, 5 ], [ 5, 3 ] ]
//     a.sort( reverse = True )  -- output: [ [ 5, 3], [ 3, 5 ], [ 3, 3 ], [ 2, 2 ], [ 1, 3 ] ]
//
//     t : Tuple[ int, ... ] = ( 1, 2, 3, 4, 5 )
//     t = tuple( sorted( t, reverse = False ) )       -- NOT IN-PLACE & STABLE
//     t = tuple( sorted( t, key = myFunc, reverse = False ) )       -- NOT IN-PLACE & STABLE
//     t = tuple( sorted( t, key = lambda x: x, reverse = False ) )       -- NOT IN-PLACE & STABLE
//     print( t )
//
//     s : str = "ABC"
//     s = "".join( sorted( s, reverse = False ) )     -- NOT IN-PLACE & STABLE
//     s = "".join( sorted( t, key = myFunc, reverse = False ) )       -- NOT IN-PLACE & STABLE
//     s = "".join( sorted( t, key = lambda x: x, reverse = False ) )       -- NOT IN-PLACE & STABLE
//     print( s )
//
//
// using std::partial_sort;                    // HeapSort elements in range ( iterFirst, iterLast ) ( exclusively ). IN-PLACE & NOT STABLE
// PYTHON_USAGE:
//     a : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
//     a[ 1:4 ] = sorted( a[ 1:4 ], reverse = False )  -- NOT IN-PLACE & STABLE
//     a[ 1:4 ] = sorted( a[ 1:4 ], key = myFunc, reverse = False )  -- NOT IN-PLACE & STABLE
//     a[ 1:4 ] = sorted( a[ 1:4 ], key = lambda x: x, reverse = False )  -- NOT IN-PLACE & STABLE
//
//
// using std::stable_sort;                     // Merge-Sort elements. NOT IN-PLACE & STABLE
//

// using std::sort_heap;                       // HeapSort elements. IN-PLACE & NOT STABLE
// GO_USAGE:
// MIN_HEAP:
//     type IntHeap []int
//
//     func ( h IntHeap ) Len() int {
//         return len( h )
//     }
//
//     // MIN_HEAP HERE!!!
//     func ( h IntHeap ) Less( i, j int ) bool {
//         return h[ i ] < h[ j ]
//     }
//
//     func ( h IntHeap ) Swap( i, j int ) {
//         h[ i ], h[ j ] = h[ j ], h[ i ]
//     }
//
//     func ( h *IntHeap ) Push( x interface{}  ) {
//         *h = append( *h, x.( int ) )
//     }
//
//     func ( h *IntHeap ) Pop() interface{} {
//         old := *h
//         n := len( old )
//         x := old[ n - 1 ]
//         *h = old[ 0 : n - 1 ]
//         return x
//     }
//
//     func main() {
//         nums := []int{ 3, 2, 20, 5, 3, 1, 2, 5, 6, 9, 10, 4 }
//
// 	       // initialize the heap data structure
//         h := &IntHeap{}
//
// 	       // add all the values to heap, O(n log n)
// 	       for _, val := range nums { // O(n)
// 		       heap.Push( h, val ) // O(log n)
// 	       }
//
// 	       // print all the values from the heap
// 	       // which should be in ascending order
// 	       for i := 0; i < len( nums ); i++ {
// 	           fmt.Printf( "%d,", heap.Pop( h ).( int ) )
// 	       }
//     }
//
// MAX_HEAP:
//     type IntHeap []int
//
//     func ( h IntHeap ) Len() int {
//         return len( h )
//     }
//
//     // MAX_HEAP HERE!!!
//     func ( h IntHeap ) Less( i, j int ) bool {
//         return h[ i ] > h[ j ]
//     }
//
//     func ( h IntHeap ) Swap( i, j int ) {
//         h[ i ], h[ j ] = h[ j ], h[ i ]
//     }
//
//     func ( h *IntHeap ) Push( x interface{}  ) {
//         *h = append( *h, x.( int ) )
//     }
//
//     func ( h *IntHeap ) Pop() interface{} {
//         old := *h
//         n := len( old )
//         x := old[ n - 1 ]
//         *h = old[ 0 : n - 1 ]
//         return x
//     }
//
//     func main() {
//         nums := []int{ 3, 2, 20, 5, 3, 1, 2, 5, 6, 9, 10, 4 }
//
// 	       // initialize the heap data structure
//         h := &IntHeap{}
//
// 	       // add all the values to heap, O(n log n)
// 	       for _, val := range nums { // O(n)
// 		       heap.Push( h, val ) // O(log n)
// 	       }
//
// 	       // print all the values from the heap
// 	       // which should be in ascending order
// 	       for i := 0; i < len( nums ); i++ {
// 	           fmt.Printf( "%d,", heap.Pop( h ).( int ) )
// 	       }
//     }
//

// using std::remove;
// GO_USAGE:
//     var l []int = []int{ 1, 2, 3, 4, 5, 6 }
//     l := []int{ 1, 2, 3, 4, 5, 6 }
//
//     l = append( l[ :1 ], l[ 4: ]... )
//     l = append( l[ :1 ], l[ 2: ]... )
//     l = l[ 1: ]
//     l = l[ :len( l ) - 1 ]
//
//     var m map[string]int = map[string]int{ key1: val1, key2: val2, key3: val3 }
//     m := map[string]int{ key1: val1, key2: val2, key3: val3 }
//     
//     delete( m, key1 )
//     delete( m, key2 )
//

// using std::swap;
// GO_USAGE:
//     var l []int = []int{ 1, 2, 3, 4, 5, 6 }
//     l := []int{ 1, 2, 3, 4, 5, 6 }
//
//     l[ 1 ], l[ 3 ] = l[ 3 ], l[ 1 ]
//
//     var m map[string]int = map[string]int{ key1: val1, key2: val2, key3: val3 }
//     m := map[string]int{ key1: val1, key2: val2, key3: val3 }
//
//     m[ key1 ], m[ key3 ] = m[ key3 ], m[ key1 ]
//

// using std::binary_search;
// GO_USAGE:
//     var l []int = []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 }
//     l := []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 } 
//
//     lb := sort.Search( len( l ), func( i int ) bool {
//         return l[ i ] >= 3
//     })
//     if lb < len( l ) && l[ lb ] == 3 {
//         fmt.Println( lb )  -- output: 2
//     } else {
//         fmt.Println( lb )  -- output: len( l )
//     }
//
//     var l []int = []int{ 6, 5, 3, 3, 3, 3, 3, 2, 1 }
//     l := []int{ 6, 5, 3, 3, 3, 3, 3, 2, 1 } 
//
//     ub_desc := sort.Search( len( l ), func( i int ) bool {
//         return l[ i ] <= 3
//     })
//     if ub_desc >= 1 && ub_desc < len( l ) {
//         fmt.Println( ub_desc - 1 )  -- output: 1
//     } else {
//         fmt.Println( ub_desc )  -- output: len( l )
//     }
//
// GO_TRICKS:
//     var l []int = []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 }
//     l := []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 } 
//
//     i := sort.SearchInts( l, 3 )
//     fmt.Println( i )  -- output: 2
//
//     i := sort.SearchInts( l, 4 )
//     fmt.Println( i )  -- output: 7
//
//     i := sort.SearchFloat64s( l_float64s, 4.0 )
//     fmt.Println( i )
//
//     i := sort.SearchStrings( l_strings, "abcd" )
//     fmt.Println( i )
//

// from itertools import permutations
// using std::next_permutation;
// using std::prev_permutation;
// PYTHON_USAGE:
//     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
//     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
//     for p in permutations( l ):
//         print( list( p ) )
//
//     t : Tuple[ int, ... ] = ( 1, 2, 3, 3, 3, 3, 4, 5 )
//     for p in permutations( t ):
//         print( tuple( p ) )
//
//     d : Dict[ str, int ] = { key1: val1, key2: val2, key3: val3 }
//     for p in permutations( d ):
//         print( dict( p ) )
//
//     s : 
//     for p in permutations( d ):
//         print( "".join( p ) )
//
//
// using std::set_intersection;                // Only works on std::set and not std::unordered_set
// PYTHON_USAGE:
//     s1 : Set[ int ] = { 1, 2, 3, 4, 5, 6 }
//     s2 : Set[ int ] = { 4, 5, 6, 7, 8, 9 }
//     print( s1.intersection( s2 ) )
//
//
// using std::set_difference;                  // Only works on std::set and not std::unordered_set
// PYTHON_USAGE:
//     s1 : Set[ int ] = { 1, 2, 3, 4, 5, 6 }
//     s2 : Set[ int ] = { 4, 5, 6, 7, 8, 9 }
//     print( s1.difference( s2 ) )
//
//
// using std::set_union;
// PYTHON_USAGE:
//     s1 : Set[ int ] = { 1, 2, 3, 4, 5, 6 }
//     s2 : Set[ int ] = { 4, 5, 6, 7, 8, 9 }
//     print( s1.union( s2 ) )
//
//
// using std::lower_bound;                     // Returns iter pointing to first element >= value
// GO_USAGE:
//     var l []int = []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 }
//     l := []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 } 
//
//     lb := sort.Search( len( l ), func( i int ) bool {
//         return l[ i ] >= 3
//     })
//     if lb < len( l ) {
//         fmt.Println( lb )  -- output: 2
//     } else {
//         fmt.Println( lb )  -- output: len( l )
//     }
//
//     var l []int = []int{ 6, 5, 3, 3, 3, 3, 3, 2, 1 }
//     l := []int{ 6, 5, 3, 3, 3, 3, 3, 2, 1 } 
//
//     lb_desc := sort.Search( len( l ), func( i int ) bool {
//         return l[ i ] < 3
//     })
//     if lb_desc >= 1 && lb_desc < len( l ) {
//         fmt.Println( lb_desc - 1 )  -- output: 6
//     } else {
//         fmt.Println( lb_desc )  -- output: len( l )
//     }
//

// using std::upper_bound;                     // Returns iter pointing to first element > value
// GO_USAGE:
//     var l []int = []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 }
//     l := []int{ 1, 2, 3, 3, 3, 3, 3, 5, 6 } 
//
//     ub := sort.Search( len( l ), func( i int ) bool {
//         return l[ i ] > 3
//     })
//     if ub < len( l ) {
//         fmt.Println( ub )  -- output: 6
//     } else {
//         fmt.Println( ub )  -- output: len( l )
//     }
//
//     var l []int = []int{ 6, 5, 3, 3, 3, 3, 3, 2, 1 }
//     l := []int{ 6, 5, 3, 3, 3, 3, 3, 2, 1 } 
//
//     ub_desc := sort.Search( len( l ), func( i int ) bool {
//         return l[ i ] <= 3
//     })
//     if ub_desc >= 1 && ub_desc < len( l ) {
//         fmt.Println( ub_desc - 1 )  -- output: 1
//     } else {
//         fmt.Println( ub_desc )  -- output: len( l )
//     }
//

// using std::transform;                       // Apply the given function to a range and store result in another range
// PYTHON_USAGE:
//
// using std::nth_element;
//
// //----< memory >----------------------------//
// using std::make_unique;
// using std::unique_ptr;
// using std::make_shared;
// using std::shared_ptr;
// using std::weak_ptr;
//

import "unicode"
import "strings"
// //----< cctype >----------------------------//
// using std::isalnum;
// GO_USAGE:
//     c := 'b'
//     fmt.Println( unicode.IsLetter( c ) || unicode.IsDigit( c ) )  -- output: true
//     fmt.Println( unicode.IsLetter( 'c' ) || unicode.IsDigit( 'c' ) )  -- output: true
//
//     c := 'A'
//     fmt.Println( unicode.IsLetter( c ) || unicode.IsDigit( c ) )  -- output: true
//     fmt.Println( unicode.IsLetter( 'B' ) || unicode.IsDigit( 'B' ) )  -- output: true
//     
//     c := '1'
//     fmt.Println( unicode.IsLetter( c ) || unicode.IsDigit( c ) )  -- output: false
//     fmt.Println( unicode.IsLetter( '2' ) || unicode.IsDigit( '2' ) )  -- output: false
//
//     c := '!'
//     fmt.Println( unicode.IsLetter( c ) || unicode.IsDigit( c ) )  -- output: false
//     fmt.Println( unicode.IsLetter( '?' ) || unicode.IsDigit( '?' ) )  -- output: false
//

// using std::isalpha;
// GO_USAGE:
//     c := 'b'
//     fmt.Println( unicode.IsLetter( c ) )  -- output: true
//     fmt.Println( unicode.IsLetter( 'c' ) )  -- output: true
//
//     c := 'A'
//     fmt.Println( unicode.IsLetter( c ) )  -- output: true
//     fmt.Println( unicode.IsLetter( 'B' ) )  -- output: true
//     
//     c := '1'
//     fmt.Println( unicode.IsLetter( c ) )  -- output: false
//     fmt.Println( unicode.IsLetter( '2' ) )  -- output: false
//
//     c := '!'
//     fmt.Println( unicode.IsLetter( c ) )  -- output: false
//     fmt.Println( unicode.IsLetter( '?' ) )  -- output: false
//

// using std::islower;
// GO_USAGE:
//     c := 'b'
//     fmt.Println( unicode.IsLower( c ) )  -- output: true
//     fmt.Println( unicode.IsLower( 'c' ) )  -- output: true
//
//     c := 'A'
//     fmt.Println( unicode.IsLower( c ) )  -- output: false
//     fmt.Println( unicode.IsLower( 'B' ) )  -- output: false
//     
//     c := '1'
//     fmt.Println( unicode.IsLower( c ) )  -- output: false
//     fmt.Println( unicode.IsLower( '2' ) )  -- output: false
//
//     c := '!'
//     fmt.Println( unicode.IsLower( c ) )  -- output: false
//     fmt.Println( unicode.IsLower( '?' ) )  -- output: false
//

// using std::isupper;
// GO_USAGE:
//     c := 'A'
//     fmt.Println( unicode.IsUpper( c ) )  -- output: true
//     fmt.Println( unicode.IsUpper( 'B' ) )  -- output: true
//     
//     c := 'b'
//     fmt.Println( unicode.IsUpper( c ) )  -- output: false
//     fmt.Println( unicode.IsUpper( 'c' ) )  -- output: false
//
//     c := '1'
//     fmt.Println( unicode.IsUpper( c ) )  -- output: false
//     fmt.Println( unicode.IsUpper( '2' ) )  -- output: false
//
//     c := '!'
//     fmt.Println( unicode.IsUpper( c ) )  -- output: false
//     fmt.Println( unicode.IsUpper( '?' ) )  -- output: false
//

// using std::isdigit;
// GO_USAGE:
//     c := '1'
//     fmt.Println( unicode.IsDigit( c ) )  -- output: true
//     fmt.Println( unicode.IsDigit( '2' ) )  -- output: true
//
//     c := 'a'
//     fmt.Println( unicode.IsDigit( c ) )  -- output: false
//     fmt.Println( unicode.IsDigit( 'b' ) )  -- output: false
//
//     c := '1'
//     fmt.Println( unicode.IsNumber( c ) )  -- output: true
//     fmt.Println( unicode.IsNumber( '2' ) )  -- output: true
//
//     c := 'a'
//     fmt.Println( unicode.IsNumber( c ) )  -- output: false
//     fmt.Println( unicode.IsNumber( 'b' ) )  -- output: false
//

// using std::isspace;                         // Check whether char is whitespace character (space, newline, tab, etc. )
// using std::isblank;                         // Check whether char is blank character ( space or tab )
// GO_USAGE:
//     c := ' '
//     fmt.Println( unicode.IsSpace( c ) )  -- output: true
//     fmt.Println( unicode.IsSpace( ' ' ) )  -- output: true
//
//     c := 'd'
//     fmt.Println( unicode.IsSpace( c ) )  -- output: false
//     fmt.Println( unicode.IsSpace( 'd' ) )  -- output: false
//

// using std::tolower;
// GO_USAGE:
//     c := 'A'
//     fmt.Println( unicode.ToLower( c ) )  -- output: a
//     fmt.Println( unicode.ToLower( 'B' ) )  -- output: b
//
//     s := "GOPher#$#@"
//     fmt.Println( strings.ToLower( s ) )  -- output: "gopherr#$#@"
//

// using std::toupper;
// GO_USAGE:
//     c := 'a'
//     fmt.Println( unicode.ToUpper( c ) )  -- output: A
//     fmt.Println( unicode.ToUpper( 'b' ) )  -- output: B
//
//     s := "Gopher#$#@"
//     fmt.Println( strings.ToUpper( s ) )  -- output: "GOPHERr#$#@"
//

// //----< stdexcept >-------------------------//
// using std::runtime_error;
// using std::invalid_argument;
// using std::out_of_range;
//
// //----< limits >----------------------------//
// using std::numeric_limits;                  // ::lowest() & ::max() for smallest & biggest representable value, respectively
//                                             // ::infinity() only works for `double` / `float` / 'long double'. ::has_infinity() == false for ALL other types.
// PYTHON_USAGE:
//     print( - sys.maxsize - 1 )
//     print( sys.maxsize )
//     print( float( '-inf' ) )
//     print( float( 'inf' ) )
//
// //----< numeric >---------------------------//
// using std::iota;
// using std::gcd;
// using std::lcm;
// using std::partial_sum;                     // Calculate partial_sum of range beginIter, endIter and put result to 3rd argument outIter

import "sync"
import "time"
// //----< thread >----------------------------//
// using std::thread;
// namespace this_thread = std::this_thread;   // Manipulate / Info of the current thread
// // using this_thread::get_id;                  // Get the current thread's id
// // using this_thread::yield;                   // Yield to other threads
// // using this_thread::sleep_until;             // Sleep until time point
// // using this_thread::sleep_for;               // Sleep for time span
//
// //----< future >----------------------------//
// using std::future;
// using std::async;
// GO_USAGE:
//     1. Use a for loop when you want to read from a channel until it is closed.
//     2. Use a select statement when you want to read from multiple channels at
//     the same time.
//
// GO_USAGE:
//     1. WaitGroup is a good choice for simple synchronization tasks where
//        the number of goroutines is fixed and known in advance.
//     2. Channels are better for more complex tasks where synchronization
//        and communication between goroutines is required.
//
// GO_USAGE_UNBUFFERED_CHANNEL:
//     c := make( chan int ) // Create a channel of integers
//
//     // Start a goroutine to send integers to the channel
//     go func() {
//         for i := 0; i < 5; i++ {
//             c <- i
//         }
//         close( c ) // Close the channel when done sending
//     }()
//
//     // Receive integers from the channel and print them
//     for i := range c {
//         fmt.Println( i )
//     }
//
// // OUTPUT: 0
// //         1
// //         2
// //         3
// //         4
//
// GO_USAGE_UNBUFFERED_CHANNEL:
//     // Create an unbuffered channel
//     ch := make(chan int)
//
//     // Start a goroutine to send values to the channel
//     go func() {
//         for i := 0; i < 5; i++ {
//             ch <- i
//         }
//         close(ch)
//     }()
//
//     // Read values from the channel using a for loop
//     for {
//         val, ok := <-ch
//         if !ok {
//             break
//         }
//         fmt.Println(val)
//     }
//
// // OUTPUT: 0
// //         1
// //         2
// //         3
// //         4
//
// GO_USAGE_BUFFERED_CHANNEL:
//     nums := []int{1, 2, 3, 4, 5}
//     done := make(chan bool)
//
//     for _, num := range nums {
//         go func(n int) {
//             fmt.Println(n)
//             done <- true
//         }(num)
//     }
//
//     for i := 0; i < len(nums); i++ {
//         <-done
//     }
//
// // OUTPUT: 1
// //         2
// //         3
// //         4
// //         5
//
// GO_USAGE_SELECT_UNBUFFERED_CHANNEL:
//     ch1 := make(chan int)
//     ch2 := make(chan int)
//     go func() {
//         ch1 <- 1
//     }()
//     go func() {
//         ch2 <- 2
//     }()
//     select {
//     case val := <-ch1:
//         fmt.Println(val)
//     case val := <-ch2:
//         fmt.Println(val)
//     }
//
// // OUTPUT: 2
//
// GO_USAGE_SELECT_UNBUFFERED_CHANNEL_FOR_LOOP:
//     ch1 := make(chan int)
//     ch2 := make(chan int)
//     go func() {
//         ch1 <- 1
//     }()
//     go func() {
//         ch2 <- 2
//     }()
//     for i := 0; i < 2; i++ {
//         select {
//         case val := <-ch1:
//             fmt.Println(val)
//         case val := <-ch2:
//             fmt.Println(val)
//         }
//     }
//
// // OUTPUT: 2
// //         1
//
// GO_USAGE_SELECT_UNBUFFERED_CHANNEL_FOR_LOOP_ADVANCED:
//     c1 := make( chan int )
//     c2 := make( chan string )
//
//     // Start a goroutine to send integers to c1
//     go func() {
//         for i := 1; i <= 5; i++ {
//             c1 <- i
//             time.Sleep( time.Millisecond * 500 )
//         }
//         close( c1 )
//     }()
//
//     // Start a goroutine to send strings to c2
//     go func() {
//         for _, s := range []string{ "one", "two", "three", "four", "five" } {
//             c2 <- s
//             time.Sleep( time.Millisecond * 250 )
//         }
//         close( c2 )
//     }()
//
//     // Use a select statement to receive values from c1 and c2
//     for {
//         select {
//         case i, ok := <-c1:
//             if !ok {
//                 c1 = nil
//             }
//             fmt.Printf( "Received integer: %d\n", i)
//         case s, ok := <-c2:
//             if !ok {
//                 c2 = nil
//             }
//             fmt.Printf( "Received string: %s\n", s )
//         }
//         if c1 == nil && c2 == nil {
//             break
//         }
//     }
//
// // OUTPUT: Received string: one
// //         Received integer: 1
// //         Received string: two
// //         Received integer: 2
// //         Received string: three
// //         Received string: four
// //         Received string: five
// //         Received integer: 3
// //         Received string: 
// //         Received integer: 4
// //         Received integer: 5
// //         Received integer: 0
//
// GO_USAGE_WAIT_GROUP:
//     var wg sync.WaitGroup
//     for i := 1; i <= 5; i++ {
//         wg.Add(1)
//         go func(id int, wg *sync.WaitGroup) {
//             defer wg.Done()
//             fmt.Printf("Worker %d starting\n", id)
//             time.Sleep(time.Second)
//             fmt.Printf("Worker %d done\n", id)
//         }(i, &wg)
//     }
//     wg.Wait()
//     fmt.Println("All workers done")
//
// // OUTPUT: Worker 1 starting
// //         Worker 5 starting
// //         Worker 2 starting
// //         Worker 3 starting
// //         Worker 4 starting
// //         Worker 5 done
// //         Worker 4 done
// //         Worker 1 done
// //         Worker 3 done
// //         Worker 2 done
// //         All workers done
//
// GO_USAGE_BUFFERED_CHANNEL:
//     // Create a buffered channel with a capacity of 2
//     ch := make(chan int, 2)
//
//     // Send values to the channel
//     ch <- 1
//     ch <- 2
//
//     // Attempt to send a third value, but the channel is full
//     // and the send operation will block until a receiver
//     // reads a value from the channel
//     // ch <- 3  // uncomment this to see it block
//
//     // Read values from the channel
//     fmt.Println(<-ch)
//     fmt.Println(<-ch)
//
//     // Attempt to read a third value, but the channel is empty
//     // and the receive operation will block until a sender
//     // writes a value to the channel
//     // fmt.Println(<-ch)  // uncomment this to see it block
//
// // OUTPUT: 1
// //         2
//
// GO_USAGE_BUFFERED_CHANNEL:
//     // Create a buffered channel with a capacity of 5
//     ch := make(chan int, 5)
//
//     // Start a goroutine to send values to the channel
//     go func() {
//         for i := 0; i < 10; i++ {
//             ch <- i
//         }
//         close(ch)
//     }()
//
//     // Read values from the channel using a for loop
//     for val := range ch {
//         fmt.Println(val)
//     }
//
// // OUTPUT: 0
// //         1
// //         2
// //         3
// //         4
// //         5
// //         6
// //         7
// //         8
// //         9
//
// GO_USAGE_SELECT_BUFFERED_CHANNEL:
//     ch1 := make(chan int, 10)
//     ch2 := make(chan int, 10)
//
//     // send values to the channels
//     for i := 0; i < 10; i++ {
//         ch1 <- i
//         ch2 <- i * 2
//     }
//
//     // use select statement to read from the channels
//     select {
//     case val1 := <-ch1:
//         fmt.Println("Received value from channel 1:", val1)
//     case val2 := <-ch2:
//         fmt.Println("Received value from channel 2:", val2)
//     }
//
// // OUTPUT: EITHER: Received value from channel 1: 0
// //                 Received value from channel 2: 0
//
// GO_USAGE_SELECT_BUFFERED_CHANNEL_FOR_LOOP:
//     // create two buffered channels with capacities of 3
//     channelA := make(chan string, 3)
//     channelB := make(chan string, 3)
//
//     // add values to channelA
//     channelA <- "hello"
//     channelA <- "world"
//     channelA <- "!"
//
//     // add values to channelB
//     channelB <- "foo"
//     channelB <- "bar"
//     channelB <- "baz"
//
//     // use a for loop to receive values from both channels
//     // and print them out
//     for i := 0; i < 6; i++ {
//         select {
//         case msg := <-channelA:
//             fmt.Println("received from channelA:", msg)
//         case msg := <-channelB:
//             fmt.Println("received from channelB:", msg)
//         default:
//             fmt.Println("no messages received")
//         }
//     }
//
//     // close the channels
//     close(channelA)
//     close(channelB)
//
// // OUTPUT: received from channelA: hello
// //         received from channelB: foo
// //         received from channelB: bar
// //         received from channelA: world
// //         received from channelA: !
// //         received from channelB: baz
//
// GO_USAGE_SELECT_BUFFERED_CHANNEL_FOR_LOOP_ADVANCED:
//     // create two buffered channels with capacities of 3
//     channelA := make(chan string, 3)
//     channelB := make(chan string, 3)
//
//     // add values to channelA
//     channelA <- "hello"
//     channelA <- "world"
//     channelA <- "!"
//
//     // add values to channelB
//     channelB <- "foo"
//     channelB <- "bar"
//     channelB <- "baz"
//
//     // use a nested for loop to receive values from both channels
//     // and print them out
//     for {
//         for i := 0; i < 2; i++ {
//             select {
//             case msg := <-channelA:
//                 fmt.Println("received from channelA:", msg)
//             case msg := <-channelB:
//                 fmt.Println("received from channelB:", msg)
//             default:
//                 fmt.Println("no messages received")
//                 break
//             }
//         }
//         if len(channelA) == 0 && len(channelB) == 0 {
//             break
//         }
//     }
//
//     // close the channels
//     close(channelA)
//     close(channelB)
//
// // OUTPUT: received from channelA: hello
// //         received from channelA: world
// //         received from channelB: foo
// //         received from channelA: !
// //         received from channelB: bar
// //         received from channelB: baz
//
// //----< future >----------------------------//
// using std::future;
// using std::async;
// GO_USAGE:
// GO_USAGE_FUTURE:
//     type Solution struct {
//     }
//
//     func (s *Solution) printNumber(num int, wg *sync.WaitGroup) int {
//         for i := 0; i < 5; i++ {
//             fmt.Printf("Thread %d printing %d\n", goroutineID(), num)
//             time.Sleep(500 * time.Millisecond)
//         }
//         wg.Done()
//         return num * 100
//     }
//
//     func (s *Solution) runThreads() {
//         fmt.Printf("Main thread %d started.\n", goroutineID())
//
//         var wg sync.WaitGroup
//         wg.Add(2)
//
//         go func() {
//             defer wg.Done()
//             s.printNumber(1, &wg)
//         }()
//
//         go func() {
//             defer wg.Done()
//             s.printNumber(2, &wg)
//         }()
//
//         wg.Wait()
//
//         fmt.Printf("Main thread %d finished.\n", goroutineID())
//     }
//
//     func goroutineID() int {
//         return int(time.Now().UnixNano())
//     }
//
// // OUTPUT: Thread 1 printing 1
// //         Thread 2 printing 2
// //         Thread 2 printing 2
// //         Thread 1 printing 1
// //         Thread 1 printing 1
// //         Thread 2 printing 2
// //         Thread 2 printing 2
// //         Thread 1 printing 1
// //         Thread 2 printing 2
// //         Thread 1 printing 1
// //         Result 1: 100
// //         Result 2: 200
// //         Main thread ... finished.
//
// GO_USAGE_ASYNC:
//     func printNumbers() {
//         for i := 1; i <= 5; i++ {
//             fmt.Println(i)
//             time.Sleep(500 * time.Millisecond)
//         }
//     }
//
//     func printLetters() {
//         for letter := 'a'; letter <= 'e'; letter++ {
//             fmt.Printf("%c\n", letter)
//             time.Sleep(500 * time.Millisecond)
//         }
//     }
//
//     func main() {
//         go printNumbers()
//         go printLetters()
//
//         time.Sleep(3000 * time.Millisecond)
//     }
//
// // OUTPUT: 1
// //         a
// //         2
// //         b
// //         3
// //         c
// //         4
// //         d
// //         5
// //         e
//

//
// NOTE:
//
//     Threads Synchronization Ranking: LEAST-To-MOST Overhead:
//
//     1. Sync.Mutex: This is the least expensive synchronization primitive in
//        the list because it involves the least coordination between
//        goroutines. It's typically used for protecting shared memory access
//        in a critical section.
//  
//     2. Buffered channels: These channels allow sending and receiving data
//        asynchronously, and they buffer a limited number of values. Since the
//        values are buffered, there's less coordination between the sender and
//        receiver, which reduces the overhead.
//
//     3. Sync.RWMutex: This is a read-write lock that allows for multiple
//        readers or a single writer. It's less expensive than a Mutex because
//        multiple readers can acquire the lock at the same time, but it still
//        involves some overhead due to the coordination between the readers
//        and writer.
//
//     4. Sync.WaitGroup: This is a synchronization primitive that allows a
//        group of goroutines to wait for each other to complete. It involves
//        tracking the number of active goroutines, and the WaitGroup is
//        blocked until all goroutines have completed. While it's not as heavy
//        as unbuffered channels, it still involves coordination and tracking
//        of goroutines, which can be expensive.
//
//     5. Unbuffered channels: These channels block the sender until the
//        receiver is ready to receive the value, and vice versa. The
//        communication between the sender and receiver can be expensive,
//        especially when there are multiple goroutines involved, which can
//        lead to significant overhead.
//
//     Again, it's important to note that the performance overhead of these
//     synchronization primitives can vary depending on the specific use case
//     and the number of goroutines involved, so it's always recommended to
//     measure and profile the code to determine the actual overhead.
//

// //----< mutex >-----------------------------//
// using std::mutex;                           // Basic mutex
// using std::timed_mutex;                     // mutex with a timeout. CAN BE LOCKED & UNLOCKED
// using std::recursive_mutex;                 // mutex can be locked recursively by the same thread. CAN BE LOCKED & UNLOCKED
// using std::recursive_timed_mutex;           // mutex can be locked recursively by same thread and locking with a timeout. CAN BE LOCKED & UNLOCKED
// using std::lock;                            // locks specified mutexes. CAN BE LOCKED & UNLOCKED
// using std::lock_guard;                      // strictly scope-based mutex ownership wrapper. LOCK ON CONSTRUCTION & UNLOCK ON DESTRUCTION 
// using std::scoped_lock;                     // deadlock-avoiding RAII wrapper. LOCK ON CONSTRUCTION & UNLOCK ON DESTRUCTION
// using std::unique_lock;                     // movable mutex ownership wrapper. CAN BE LOCKED & UNLOCKED
// GO_USAGE_MUTEX:
//     var count int
//     var wg sync.WaitGroup
//     var mutex sync.Mutex
//
//     func increment() {
//         defer wg.Done()
//         for i := 0; i < 5; i++ {
//             mutex.Lock()   // Lock the mutex before accessing the shared variable
//             count++
//             mutex.Unlock() // Unlock the mutex after accessing the shared variable
//             fmt.Println("Incrementing:", count)
//         }
//     }
//
//     func decrement() {
//         defer wg.Done()
//         for i := 0; i < 5; i++ {
//             mutex.Lock()   // Lock the mutex before accessing the shared variable
//             count--
//             mutex.Unlock() // Unlock the mutex after accessing the shared variable
//             fmt.Println("Decrementing:", count)
//         }
//     }
//
//     func main() {
//         wg.Add(2)
//         go increment()
//         go decrement()
//         wg.Wait()
//         fmt.Println("Final count:", count)
//     }
//
// // OUTPUT: Decrementing: -1
// //         Decrementing: -2
// //         Decrementing: -2
// //         Decrementing: -3
// //         Decrementing: -4
// //         Incrementing: -1
// //         Incrementing: -3
// //         Incrementing: -2
// //         Incrementing: -1
// //         Incrementing: 0
// //         Final count: 0
//
// GO_USAGE_MUTEX:
//     var count int
//     var wg sync.WaitGroup
//     var mutex sync.Mutex
//
//     func increment() {
//         defer wg.Done()
//         mutex.Lock() // Lock the mutex before accessing the shared variable
//         for i := 0; i < 5; i++ {
//             count++
//             fmt.Println("Incrementing:", count)
//         }
//         mutex.Unlock() // Unlock the mutex after accessing the shared variable
//     }
//
//     func decrement() {
//         defer wg.Done()
//         mutex.Lock() // Lock the mutex before accessing the shared variable
//         for i := 0; i < 5; i++ {
//             count--
//             fmt.Println("Decrementing:", count)
//         }
//         mutex.Unlock() // Unlock the mutex after accessing the shared variable
//     }
//
//     func main() {
//         wg.Add(2)
//         go increment()
//         go decrement()
//         wg.Wait()
//         fmt.Println("Final count:", count)
//     }
//
// // OUTPUT: Decrementing: -1
// //         Decrementing: -2
// //         Decrementing: -3
// //         Decrementing: -4
// //         Decrementing: -5
// //         Incrementing: -4
// //         Incrementing: -3
// //         Incrementing: -2
// //         Incrementing: -1
// //         Incrementing: 0
// //         Final count: 0
//

// //----< shared_mutex >----------------------//
// using std::shared_mutex;
// NOTES:
//     1. Use Read-Write Locks, we can let multiple threads accessing counter for
//     reading simultaneously without blocking each other. 
//     2. Also Read-Write Locks only allows 1 single thread to increment the counter
//     while blocking all other write calls.
//     3. When Reads >>> Writes, and we need to require Locks for all reads, RWLock
//     is clearly better performant than traditional Mutex.
//
// GO_USAGE:
// GO_USAGE_READ_WRITE_LOCKS:
//     type SafeCounter struct {
//         count int
//         mux   sync.RWMutex
//     }
//
//     func (c *SafeCounter) Inc() {
//         c.mux.Lock()
//         c.count++
//         c.mux.Unlock()
//     }
//
//     func (c *SafeCounter) Value() int {
//         c.mux.RLock()
//         defer c.mux.RUnlock()
//         return c.count
//     }
//
//     func main() {
//         var wg sync.WaitGroup
//         counter := SafeCounter{}
//
//         for i := 0; i < 10; i++ {
//             wg.Add(1)
//             go func() {
//                 for j := 0; j < 100; j++ {
//                     counter.Inc()
//                     time.Sleep(time.Millisecond)
//                 }
//                 wg.Done()
//             }()
//         }
//
//         wg.Wait()
//
//         fmt.Println("Final count: ", counter.Value())
//     }
//
// // OUTPUT: Final count: 1000
//

// //----< condition_variable >----------------//
// using std::condition_variable;
// GO_USAGE:
//     var data []int
//     var cond *sync.Cond = sync.NewCond(&sync.Mutex{})
//
//     func producer() {
//         for i := 0; i < 5; i++ {
//             cond.L.Lock()
//             data = append(data, i)
//             fmt.Println("Producer produced:", i)
//             cond.Signal()
//             cond.L.Unlock()
//         }
//     }
//
//     func consumer() {
//         for i := 0; i < 5; i++ {
//             cond.L.Lock()
//             for len(data) == 0 {
//                 cond.Wait()
//             }
//             val := data[0]
//             data = data[1:]
//             fmt.Println("Consumer consumed:", val)
//             cond.L.Unlock()
//         }
//     }
//
//     func main() {
//         go producer()
//         go consumer()
//
//         // Wait for goroutines to complete
//         var wg sync.WaitGroup
//         wg.Add(2)
//         go func() {
//             defer wg.Done()
//             producer()
//         }()
//         go func() {
//             defer wg.Done()
//             consumer()
//         }()
//         wg.Wait()
//     }
//
// // OUTPUT: Producer produced: 0
// //         Consumer consumed: 0
// //         Producer produced: 1
// //         Consumer consumed: 1
// //         Producer produced: 2
// //         Consumer consumed: 2
// //         Producer produced: 3
// //         Consumer consumed: 3
// //         Producer produced: 4
// //         Consumer consumed: 4
//

// GO_USAGE_SEMAPHORE:
//     sem := make(chan struct{}, 2) // create a channel with a buffer size of 2
//         var wg sync.WaitGroup
//
//         for i := 1; i <= 10; i++ {
//             wg.Add(1)
//
//             go func(i int) {
//                 sem <- struct{}{} // acquire the semaphore
//                 defer func() { <-sem }() // release the semaphore
//
//                 fmt.Printf("Goroutine %d started\n", i)
//                 // do some work
//                 fmt.Printf("Goroutine %d finished\n", i)
//
//                 wg.Done()
//             }(i)
//         }
//
//         wg.Wait()
//
// // OUTPUT: Goroutine 1 started
// //         Goroutine 2 started
// //         Goroutine 2 finished
// //         Goroutine 1 finished
// //         Goroutine 3 started
// //         Goroutine 4 started
// //         Goroutine 3 finished
// //         Goroutine 5 started
// //         Goroutine 6 started
// //         Goroutine 7 started
// //         Goroutine 8 started
// //         Goroutine 4 finished
// //         Goroutine 6 finished
// //         Goroutine 5 finished
// //         Goroutine 9 started
// //         Goroutine 10 started
// //         Goroutine 7 finished
// //         Goroutine 8 finished
// //         Goroutine 9 finished
// //         Goroutine 10 finished
//

// //----< chrono >----------------------------//
// using std::ratio;                           // Represents exact rational (e.g. ratio< 1, 3 >)
//
// //----< chrono >----------------------------//
// using std::chrono::duration;                // Combine with std::ratio to create duration
// using std::chrono::system_clock;
// using std::chrono::nanoseconds;             // Duration in nanoseconds
// using std::chrono::microseconds;            // Duration in microseconds
// using std::chrono::milliseconds;            // Duration in milliseconds
// using std::chrono::seconds;                 // Duration in seconds
// using std::chrono::minutes;                 // Duration in minutes
// using std::chrono::hours;                   // Duration in hours
//

import "net/http"
import "ioutil"
import "bytes"
// //----< curlpp/*.hpp >----------------------//
// GO_USAGE:
// GO_USAGE_HTTP_GET:
//     getUrl := "https://wwww.example.com"
//     resp, err := http.Get(getUrl)
//     if err != nil {
//         log.Fatal(err)
//     }
//
//     defer resp.Body.Close()
//
//     body, err := ioutil.ReadAll(resp.Body)
//     if err != nil {
//         log.Fatal(err)
//     }
//     fmt.Println(body)
//
// GO_USAGE_HTTP_POST:
//     // Initialize the JSON data
//     jsonData := map[string]string{
//         "key1": "value1",
//         "key2": "value2",
//     }
//     jsonValue, _ := json.Marshal(jsonData)
//
//     // Set the URL to send the POST request to
//     postUrl := "http://www.example.com"
//
//     // Create a new HTTP client
//     client := &http.Client{}
//
//     // Create a new POST request
//     req, err := http.NewRequest("POST", postUrl, bytes.NewBuffer(jsonValue))
//     if err != nil {
//         fmt.Println("ERROR Creating Post Request: ", err)
//         return
//     }
//
//     // Set the request header
//     req.Header.Set("Content-Type", "application/json")
//
//     // Send the POST request
//     resp, err := client.Do(req)
//     if err != nil {
//         fmt.Println("ERROR Sending Post Request: ", err)
//         return
//     }
//
//     // Print the response status code and body
//     fmt.Println("Response Status:", resp.Status)
//     buf := new(bytes.Buffer)
//     _, err = buf.ReadFrom(resp.Body)
//     if err != nil {
//         fmt.Println("ERROR Getting Response: ", err)
//         return
//     }
//     fmt.Println("RESPONSE BODY: ", buf.String())
//
//
// //------------------------------------------//
//

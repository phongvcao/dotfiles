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
// TYPESCRIPT_USAGE:
//     console.log((15).toString(16));  // output: 'f'
//
//     console.log((15).toString(2));   // output: '1111'
//
//     console.log((15).toString(8));   // output: '17'
//
//     console.log(String(17));         // output: '17'
//
//     console.log(`${15}`);            // output: '15'
//
// using std::stoi;                            // PREFERRED stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
// using std::stol;                            // PREFERRED stol() over atol() since stoi() allows conversion from binary & hex strings to int.
// using std::stoll;                           // PREFERRED stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
// using std::atoi;                            // DEPRECATED: Preferred stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
// using std::atol;                            // DEPRECATED: Preferred stol() over atol() since stoi() allows conversion from binary & hex strings to int.
// using std::atoll;                           // DEPRECATED: Preferred stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
// TYPESCRIPT_USAGE:
//     // Output: 123
//     console.log(parseInt("123"));
//
//     // Output: -123
//     console.log(parseInt("-123"));
//
//     // Output: 123
//     let i = parseInt("123", 10);
//     console.log(i);
//
//     // Output: -123
//     i = parseInt("-123", 10);
//     console.log(i);
//
//     // Output: 7
//     i = parseInt("111", 2);
//     console.log(i);
//
//     // Output: 2748
//     i = parseInt("ABC", 16);
//     console.log(i);
//
// TYPESCRIPT_TRICKS:
//     // Creating an array of runes (Unicode characters)
//     let lc: string[] = new Array(26);
//
//     for (let i = 0; i < 26; i++) {
//         lc[i] = String.fromCharCode('a'.charCodeAt(0) + i);
//     }
//
//     for (let i = 0; i < 26; i++) {
//         console.log(lc[i]);
//     }
//
//     // Creating an array of ints and counting occurrences
//     let li: number[] = new Array(26).fill(0);
//
//     for (let c of lc) {
//         li[c.charCodeAt(0) - 'a'.charCodeAt(0)] += 1;
//     }
//
//     console.log(li);
//

//----< nlohmann/json.hpp >-----------------//
// using json = nlohmann::json;
// TYPESCRIPT_USAGE:
//     class Person {
//         name: string;
//         age: number;
//
//         constructor(name: string, age: number) {
//             this.name = name;
//             this.age = age;
//         }
//     }
//
//     // Encoding JSON string from class instance
//     const person = new Person("John", 30);
//     const personJSON = JSON.stringify(person);
//     console.log(personJSON);
//
//     // Decoding JSON string into class instance
//     const decodedPerson: Person = JSON.parse(personJSON);
//     console.log(`Name: ${decodedPerson.name}, Age: ${decodedPerson.age}`);
//

import mysql from 'mysql2/promise';
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
// TYPESCRIPT_USAGE:
//     async function executeQueries() {
//         // Creating a MySQL connection pool
//         const pool = await mysql.createPool({
//             host: 'hostname',
//             user: 'username',
//             password: 'password',
//             database: 'databasename',
//             port: port,  // Replace 'port' with the actual port number
//         });
//
//         try {
//             // Non-transactional query
//             const [rows, fields] = await pool.query('SELECT name, age FROM users WHERE age > ?', [25]);
//
//             for (const row of rows) {
//                 console.log(`Name: ${row.name}, Age: ${row.age}`);
//             }
//
//             // Transactional query
//             const connection = await pool.getConnection();
//
//             try {
//                 await connection.beginTransaction();
//
//                 await connection.execute('UPDATE users SET age = ? WHERE name = ?', [30, 'John']);
//                 await connection.execute('DELETE FROM users WHERE age < ?', [30]);
//
//                 await connection.commit();
//                 console.log('Successfully executed transactional queries!');
//             } catch (transactionError) {
//                 await connection.rollback();
//                 throw transactionError;
//             } finally {
//                 connection.release();
//             }
//         } catch (error) {
//             console.error(error);
//         } finally {
//             // Closing the connection pool
//             await pool.end();
//         }
//     }
//
//     // Execute the queries
//     executeQueries();
//

// //----< string >----------------------------//
// using std::getline;
// using std::string;

// //----< cmath >-----------------------------//
// using std::sqrt;
// TYPESCRIPT_USAGE:
//     console.log(Math.sqrt(9));  // output: 3
//

// using std::pow;
// TYPESCRIPT_USAGE:
//     // Square root
//     console.log(Math.sqrt(9));  // output: 3
//
//     // Power function
//     console.log(Math.pow(7, 2));
//     console.log(Math.pow(7, 2) === 7 * 7);  // True
//     console.log(Math.pow(2, -1));  // output: 0.5
//     console.log(Math.pow(2.0, 0.5));  // output: 1.4142135623730951
//
//     // Power of 10
//     console.log(Math.pow(10, 2));  // output: 100
//     console.log(Math.pow(10, 5) === 100000);  // True
//

// using std::div;
// using std::ldiv;
// using std::lldiv;
// TYPESCRIPT_USAGE:
//     const { quo, rem } = bitsDiv(0, 7, 3);
//     console.log(`quo: ${quo} ; rem: ${rem}`);  // output: 2, 1
//
//     const { quo: quo32, rem: rem32 } = bitsDiv32(0, 7, 3);
//     console.log(`quo: ${quo32} ; rem: ${rem32}`);  // output: 2, 1
//
//     const { quo: quo64, rem: rem64 } = bitsDiv64(0, 7, 3);
//     console.log(`quo: ${quo64} ; rem: ${rem64}`);  // output: 2, 1
//
//     // Function definitions
//     function bitsDiv(a: number, b: number, c: number): { quo: number; rem: number } {
//         const quo = Math.floor(a / c);
//         const rem = a % c;
//         return { quo, rem };
//     }
//
//     function bitsDiv32(a: number, b: number, c: number): { quo: number; rem: number } {
//         const quo = Math.floor(a / c);
//         const rem = a % c;
//         return { quo, rem };
//     }
//
//     function bitsDiv64(a: number, b: number, c: number): { quo: number; rem: number } {
//         const quo = Math.floor(a / c);
//         const rem = a % c;
//         return { quo, rem };
//     }
//

// using std::log;                             // log( <arg> )
// TYPESCRIPT_USAGE:
//     console.log(Math.log(10));
//     console.log(Math.log2(10));
//     console.log(Math.log10(10));
//

// using std::exp;                             // e ^ <arg>
//
// using std::abs;
// using std::fabs;
// TYPESCRIPT_USAGE:
//     console.log(Math.abs(6));
//     console.log(Math.abs(6.0));
//     console.log(Math.abs(-6));
//     console.log(Math.abs(-6.0));
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
//
// from typing import List
// //----< array >-----------------------------//
// using std::array;                           // Fixed & Unordered Array
// TYPESCRIPT_USAGE:
//     let l: number[] = [];
//     console.log(l);
//
//     let l1: number[] = [1, 1, 1, 1, 1];
//     console.log(l1);
//
//     let l2: number[] = new Array<number>();
//     console.log(l2);
//
//     let l3: number[] = new Array<number>(0, 5);
//     console.log(l3);
//
//     let l4: number[] = new Array<number>(10);
//     for (let i = 0; i < 10; i++) {
//         l4[i] = i;
//     }
//     console.log(l4);
//

// //----< vector >----------------------------//
// using std::vector;
// TYPESCRIPT_USAGE:
//     let l: number[] = [];
//     console.log(l);
//
//     let l1: number[] = [1, 1, 1, 1, 1];
//     console.log(l1);
//
//     let l2: number[] = new Array<number>();
//     console.log(l2);
//
//     let l3: number[] = new Array<number>(0, 5);
//     console.log(l3);
//
//     let l4: number[] = new Array<number>(10).fill(0).map((_, i) => i);
//     console.log(l4);
//

// //----< list >------------------------------//
// using std::list;                            // Doubly-Linked List with size() ( O( 1 ) )
// //----< forward_list >----------------------//
// using std::forward_list;                    // Singly-Linked List without size() function ( so O( N ) if we need to get size() )
// TYPESCRIPT_TRICKS:
//     let dq: string[] = [];
//     let dq1: string[] = new Array<string>(0);
//     let dq2: string[] = [];
//     let dq3: string[] = new Array<string>(0);
//
//     let dq4: string[] = ['A', 'B', 'C', 'D'];
//
//     // Push to the back
//     dq4.push('A');
//     dq4.push('B');
//
//     // Get back element
//     let b: string | undefined = dq4[dq4.length - 1];
//
//     // Remove from the back
//     dq4.pop();
//
//     // Get front element
//     let f: string | undefined = dq4[0];
//
//     // Remove from front - O(1)
//     dq4.shift();
//

// //----< map >-------------------------------//
// using std::map;                             // Ordered Map (Red-Black Tree)
// TYPESCRIPT_USAGE:
//     const dic_keys: string[] = ["key1", "key2", "key3"];
//     const d: { [key: string]: number[] } = Object.fromEntries(dic_keys.map((key) => [key, []]));
//
//     const ds: [string, number][] = Object.entries(d).sort();
//     const sortedD: { [key: string]: number[] } = Object.fromEntries(Object.entries(d).sort());
//     const od: { [key: string]: number[] } = Object.fromEntries(Object.entries(d).sort());
//
//     // val1 = d.get(key1);
//     const key1 = "key1";
//     const val1 = d[key1];
//     if (val1 !== undefined) {
//         console.log(val1);
//     }
//
//     // if key1 in d:
//     if (key1 in d) {
//         console.log(d[key1]);
//     }
//
//     // val1 = od.get(key1);
//     const val1FromOd = od[key1];
//     if (val1FromOd !== undefined) {
//         console.log(val1FromOd);
//     }
//
//     // if key1 in od:
//     if (key1 in od) {
//         console.log(od[key1]);
//     }
//
// using std::multimap;                        // Ordered Map (Red-Black Tree) & Allow duplicated keys
// TYPESCRIPT_USAGE:
//     const d = new Map<string, number[]>();
//
//     // Add values to the map
//     d.set("key1", [1, 2, 3]);
//     d.set("key2", [4, 5]);
//     d.set("key3", [6, 7, 8]);
//
//     // Convert map items to sorted list of tuples
//     const ds: [string, number[]][] = Array.from(d.entries()).sort();
//
//     console.log(ds);
//
//
// //----< unordered_map >---------------------//
// using std::unordered_map;                   // HashMap (SeparateChainingHashST)
// TYPESCRIPT_USAGE:
//     const d: Record<string, number> = { key: val };
//
//
// using std::unordered_multimap;              // Ordered Map (Red-Black Tree) & Allow duplicated keys
// TYPESCRIPT_USAGE:
//     const d: Record<string, number[]> = { key: [val1, val2] };
//

// //----< set >-------------------------------//
// using std::set;                             // Ordered Set (Red-Black Tree)
// TYPESCRIPT_USAGE:
//     let s: Record<number, boolean> = {};
//     // or
//     let s: Record<number, boolean> = Object.create(null);
//
//     // or with an initial capacity (not a direct equivalent)
//     let s: Record<number, boolean> = {};
//
//     s[0] = true;
//     s[1] = true;
//     s[4] = true;
//
//     const keys: number[] = Object.keys(s).map(Number);
//
//     keys.sort((a, b) => a - b);
//
//     keys.forEach(k => {
//         console.log(k, s[k]);
//     });
//
//     while (Object.keys(s).length > 0) {
//         delete s[0];
//         delete s[1];
//         delete s[4];
//     }
//
//     if (!(0 in s)) {
//         console.error("First Element NOT Found!!!");
//     }
//
//
// using std::multiset;                        // Ordered Set (Red-Black Tree) & Allow duplicated keys
// TYPESCRIPT_USAGE:
//     const d: Record<string, number> = { key1: count1, key2: count2 };
//
//     const ds: [string, number][] = Object.entries(d).sort(([a], [b]) => a.localeCompare(b));
//
//     const dsDict: Record<string, number> = Object.fromEntries(ds);
//
//     // Assuming you have an OrderedDict implementation, if not, use a Map for ordered behavior
//     // const dsOrderedDict: Map<string, number> = new Map(ds);
//
//     const s = new Set<number>();
//
//     s.add(5);
//     s.add(4);
//     s.delete(1);
//     s.delete(4);
//
//     try {
//         s.delete(6);
//     } catch (e) {
//         console.log("6 is not present in set");
//     }
//
//
// //----< unordered_set >---------------------//
// using std::unordered_set;                   // HashSet (SeparateChainingHashST)
// TYPESCRIPT_USAGE:
//     const s1: Set<number> = new Set([1, 2, 3]); // set from Array
//     const s2: Set<number> = new Set("ABC");     // set from string
//
//     s1.add(5);
//     s1.add(4);
//     s1.delete(1);
//     s1.delete(4);
//
//     try {
//         s1.delete(6);
//     } catch (e) {
//         console.log("6 is not present in set");
//     }
//
//     console.log(s1);
//
//
// using std::unordered_multiset;              // HashSet (SeparateChainingHashST) & Allow duplicated keys
// TYPESCRIPT_USAGE:
//     const d: Record<string, number[]> = { key1: [count1], key2: [count2] };
//
//     // Add additional counts for keys
//     d.key1.push(anotherCountForKey1);
//     d.key2.push(anotherCountForKey2);
//
//     console.log(d);
//

// //----< deque >-----------------------------//
// using std::deque;                           // Vector of fixed-size Vectors: 1 fixed-size vector for each end of the deque
// TYPESCRIPT_USAGE:
//     class Node<T> {
//         constructor(public value: T, public prev: Node<T> | null = null, public next: Node<T> | null = null) {}
//     }
//
//     class LinkedList<T> {
//         private head: Node<T> | null = null;
//         private tail: Node<T> | null = null;
//         private length: number = 0;
//
//         pushBack(value: T): void {
//             const newNode = new Node(value, this.tail, null);
//             if (!this.head) {
//                 this.head = newNode;
//             }
//             if (this.tail) {
//                 this.tail.next = newNode;
//             }
//             this.tail = newNode;
//             this.length++;
//         }
//
//         pushFront(value: T): void {
//             const newNode = new Node(value, null, this.head);
//             if (!this.tail) {
//                 this.tail = newNode;
//             }
//             if (this.head) {
//                 this.head.prev = newNode;
//             }
//             this.head = newNode;
//             this.length++;
//         }
//
//         frontNode(): Node<T> | null {
//             return this.head;
//         }
//
//         backNode(): Node<T> | null {
//             return this.tail;
//         }
//
//         remove(node: Node<T>): T | null {
//             if (!node.prev) {
//                 this.head = node.next;
//             } else {
//                 node.prev.next = node.next;
//             }
//
//             if (!node.next) {
//                 this.tail = node.prev;
//             } else {
//                 node.next.prev = node.prev;
//             }
//
//             this.length--;
//
//             return node.value;
//         }
//
//         clear(): void {
//             this.head = null;
//             this.tail = null;
//             this.length = 0;
//         }
//
//         getLength(): number {
//             return this.length;
//         }
//
//         *[Symbol.iterator](): IterableIterator<T> {
//             let current = this.head;
//             while (current) {
//                 yield current.value;
//                 current = current.next;
//             }
//         }
//     }
//
//     // Example usage
//     const l = new LinkedList<string>();
//
//     l.pushBack("A");
//     l.pushFront("B");
//     l.pushBack("C");
//     l.pushFront("D");
//
//     // Output: 4
//     console.log(l.getLength());
//
//     // Iterating through the list
//     for (const node of l) {
//         console.log(node); // Output: D B A C
//     }
//
//     // Removing an element from the back
//     const b = l.backNode();
//     console.log(l.remove(b!)); // Output: C
//
//     // Removing an element from the front
//     const f = l.frontNode();
//     console.log(l.remove(f!)); // Output: D
//
//     // Initializing/clearing the list
//     l.clear();
//     // Output: 0
//     console.log(l.getLength());
//
// TYPESCRIPT_TRICKS_SUBOPTIMAL:
//     const deque: string[] = [];
//
//     // Push to the back
//     deque.push("A");
//     // Push to the front
//     deque.unshift("B");
//     // Push to the back
//     deque.push("C");
//     // Push to the front - O( N )
//     deque.unshift("D");
//
//     // Output: 4
//     console.log(deque.length);
//
//     // Iterating through the deque
//     for (const element of deque) {
//     console.log(element);
//     }
//
//     // Get the back element and remove it
//     const backElement = deque.pop();
//     console.log(backElement); // Output: "C"
//
//     // Get the front element and remove it - O( N )
//     const frontElement = deque.shift();
//     console.log(frontElement); // Output: "D"
//
//     // Initializing/clearing the deque
//     deque.length = 0;
//
//     // Output: 0
//     console.log(deque.length);
//

// //----< queue >-----------------------------//
// using std::queue;                           // Non-Iterable & Use std::deque as underlying data structure
// TYPESCRIPT_USAGE:
//     class Node<T> {
//         constructor(public value: T, public next: Node<T> | null = null) {}
//     }
//
//     class LinkedList<T> {
//         private head: Node<T> | null = null;
//         private tail: Node<T> | null = null;
//
//         add(value: T): void {
//             const newNode = new Node(value);
//             if (!this.head) {
//                 this.head = newNode;
//                 this.tail = newNode;
//             } else {
//                 this.tail!.next = newNode;
//                 this.tail = newNode;
//             }
//         }
//
//         addFirst(value: T): void {
//             const newNode = new Node(value);
//             newNode.next = this.head;
//             this.head = newNode;
//             if (!this.tail) {
//                 this.tail = newNode;
//             }
//         }
//
//         remove(node: Node<T>): T | undefined {
//             if (this.head === node) {
//                 this.head = node.next;
//             } else {
//                 let current = this.head;
//                 while (current && current.next !== node) {
//                     current = current.next;
//                 }
//                 if (current) {
//                     current.next = node.next;
//                 }
//             }
//
//             if (this.tail === node) {
//                 this.tail = null;
//             }
//
//             return node.value;
//         }
//
//         get first(): Node<T> | null {
//             return this.head;
//         }
//
//         get last(): Node<T> | null {
//             return this.tail;
//         }
//
//         *[Symbol.iterator](): IterableIterator<T> {
//             let current = this.head;
//             while (current) {
//                 yield current.value;
//                 current = current.next;
//             }
//         }
//     }
//
//     // Example usage
//     const l = new LinkedList<string>();
//
//     l.add("A");
//     l.addFirst("B");
//     l.add("C");
//     l.addFirst("D");
//
//     // Iterating through the list
//     for (const node of l) {
//         console.log(node); // Output: D B A C
//     }
//
//     // Getting the back element and removing it
//     const b = l.last;
//     console.log(l.remove(b!)); // Output: C
//
//     // Getting the front element and removing it
//     const f = l.first;
//     console.log(l.remove(f!)); // Output: D
//
//
// TYPESCRIPT_TRICKS_SUBOPTIMAL:
//     let q: string[] = [];
//     // or
//     // let q: string[] = new Array<string>();
//     // or
//     // let q: string[] = new Array<string>(6);
//     // or
//     // let q: string[] = ['A', 'B', 'C', 'D'];
//
//     // Push to the back
//     q.push('A');
//     // Push to the back
//     q.push('B');
//
//     // Access front element
//     const f: string | undefined = q[0];
//     console.log(f);
//
//     // Remove from front (shift operation)
//     q.shift();
//
//     console.log(q);  // Output: ['B']
//

// using std::priority_queue;                  // MaxPQ (MaxHeap) & Non-Iterable.
// //                                          // => Pass std::greater<> as template params to create MinPQ (MinHeap)
// TYPESCRIPT_USAGE:
// MIN_HEAP:
//     class PriorityQueue<T> {
//         private heap: T[] = [];
//
//         constructor(private compare: (a: T, b: T) => number) {}
//
//         get length(): number {
//             return this.heap.length;
//         }
//
//         private less(i: number, j: number): boolean {
//             return this.compare(this.heap[i], this.heap[j]) < 0;
//         }
//
//         private swap(i: number, j: number): void {
//             [this.heap[i], this.heap[j]] = [this.heap[j], this.heap[i]];
//         }
//
//         push(value: T): void {
//             this.heap.push(value);
//             this.heapifyUp();
//         }
//
//         pop(): T | undefined {
//             const length = this.length;
//             if (length === 0) {
//                 return undefined;
//             }
//
//             this.swap(0, length - 1);
//             const poppedValue = this.heap.pop();
//             this.heapifyDown();
//             return poppedValue;
//         }
//
//         private heapifyUp(): void {
//             let current = this.length - 1;
//             while (current > 0) {
//                 const parent = Math.floor((current - 1) / 2);
//                 if (this.less(current, parent)) {
//                     this.swap(current, parent);
//                     current = parent;
//                 } else {
//                     break;
//                 }
//             }
//         }
//
//         private heapifyDown(): void {
//             let current = 0;
//             while (true) {
//                 const leftChild = 2 * current + 1;
//                 const rightChild = 2 * current + 2;
//                 let smallest = current;
//
//                 if (leftChild < this.length && this.less(leftChild, smallest)) {
//                     smallest = leftChild;
//                 }
//
//                 if (rightChild < this.length && this.less(rightChild, smallest)) {
//                     smallest = rightChild;
//                 }
//
//                 if (smallest !== current) {
//                     this.swap(current, smallest);
//                     current = smallest;
//                 } else {
//                     break;
//                 }
//             }
//         }
//     }
//
//     // Example usage with a min-heap (number comparison)
//     const minHeap = new PriorityQueue<number>((a, b) => a - b);
//
//     minHeap.push(3);
//     minHeap.push(1);
//     minHeap.push(4);
//
//     console.log(minHeap.pop()); // Output: 1
//     console.log(minHeap.pop()); // Output: 3
//     console.log(minHeap.pop()); // Output: 4
//
//
// MIN_HEAP_TRICKS:
//     const values: number[] = [];
//
//     values.push(3);
//     values.push(1);
//     values.push(4);
//
//     // Sorting in ascending order (min-heap)
//     const sortedValues = values.sort((a, b) => a - b);
//
//     console.log(sortedValues); // Output: [1, 3, 4]
//
//
// MAX_HEAP:
//     class MaxHeap<T> {
//         private heap: T[] = [];
//
//         constructor(private compare: (a: T, b: T) => number) {}
//
//         get length(): number {
//             return this.heap.length;
//         }
//
//         private greater(i: number, j: number): boolean {
//             return this.compare(this.heap[i], this.heap[j]) > 0;
//         }
//
//         private swap(i: number, j: number): void {
//             [this.heap[i], this.heap[j]] = [this.heap[j], this.heap[i]];
//         }
//
//         push(value: T): void {
//             this.heap.push(value);
//             this.heapifyUp();
//         }
//
//         pop(): T | undefined {
//             const length = this.length;
//             if (length === 0) {
//                 return undefined;
//             }
//
//             this.swap(0, length - 1);
//             const poppedValue = this.heap.pop();
//             this.heapifyDown();
//             return poppedValue;
//         }
//
//         private heapifyUp(): void {
//             let current = this.length - 1;
//             while (current > 0) {
//                 const parent = Math.floor((current - 1) / 2);
//                 if (this.greater(current, parent)) {
//                     this.swap(current, parent);
//                     current = parent;
//                 } else {
//                     break;
//                 }
//             }
//         }
//
//         private heapifyDown(): void {
//             let current = 0;
//             while (true) {
//                 const leftChild = 2 * current + 1;
//                 const rightChild = 2 * current + 2;
//                 let largest = current;
//
//                 if (leftChild < this.length && this.greater(leftChild, largest)) {
//                     largest = leftChild;
//                 }
//
//                 if (rightChild < this.length && this.greater(rightChild, largest)) {
//                     largest = rightChild;
//                 }
//
//                 if (largest !== current) {
//                     this.swap(current, largest);
//                     current = largest;
//                 } else {
//                     break;
//                 }
//             }
//         }
//     }
//
//     // Example usage with a max-heap (number comparison)
//     const maxHeap = new MaxHeap<number>((a, b) => a - b);
//
//     maxHeap.push(3);
//     maxHeap.push(1);
//     maxHeap.push(4);
//
//     console.log(maxHeap.pop()); // Output: 4
//     console.log(maxHeap.pop()); // Output: 3
//     console.log(maxHeap.pop()); // Output: 1
//
//
// MAX_HEAP_TRICKS:
//     const values = [];
//     values.push(3)
//     values.push(1)
//     values.push(4)
//
//     // Sorting in descending order
//     const sortedValues = values.sort((a, b) => b - a);
//
//     console.log(sortedValues); // Output: [4, 3, 1]
//

// //----< stack >-----------------------------//
// using std::stack;                           // Non-Iterable & Use std::deque as underlying data structure
// TYPESCRIPT_USAGE:
//     // Using an array as a stack
//     const st: number[] = [];
//
//     // Pushing elements onto the stack
//     st.push(1);
//     st.push(2);
//     st.push(3);
//
//     // Popping and printing elements until the stack is empty
//     while (st.length > 0) {
//         console.log(st[st.length - 1]);
//         console.log(st.pop());
//     }
//

// //----< tuple >-----------------------------//
// using std::tuple;                           // Non-Iterable & Use std::pair as underlying data structure
// using std::get;                             // Access & Set element in tuple using get< index >( tuple_var )
// TYPESCRIPT_USAGE:
//     // Tuple with specific types
//     const t1: [string, number] = ["ABC", 1];
//
//     // Tuple with variable number of elements of type int
//     const t2: number[] = [1, 2, 3];
//
//     // Tuple with a single element of type int
//     const t3: [number] = [1];
//
//     // Tuple with variable number of elements of type string
//     const t4: string[] = ["A", "B", "C"];
//
//     // Tuple with a single element of type string
//     const t5: [string] = ["A"];
//
//     // Creating a tuple using a function (similar to Python tuple())
//     const createTuple = <T extends any[]>(...elements: T): T => elements;
//     const t6 = createTuple("ABC", 1);
//
//     // Accessing elements in the tuple
//     if (t1[0] === "ABC") {
//         console.log(t1[1]);
//     }
//
//
// [ UNSUPPORTED_IN_PYTHON ]//----< bitset >----------------------------//
// [ UNSUPPORTED_IN_PYTHON ] using std::bitset;
//
// from typing import Iterable
// from typing import Iterator
// //----< iterator >--------------------------//
// using std::iterator;                        // Provides the common functionality and typedefs required for creating custom iterators
//

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

// //----< optional >--------------------------//
// using std::optional;                        // Expresses that a value may or may not be present
// TYPESCRIPT_USAGE:
//     function getValue(): number | undefined {
//         // Return a number or undefined
//         const value = 42;
//         return value;
//     }
//
//     function main() {
//         // Get the optional value
//         const optionalValue = getValue();
//
//         // Check if the optional has a value
//         if (optionalValue !== undefined) {
//             console.log("Optional value:", optionalValue);
//         } else {
//             console.log("Optional value is undefined");
//         }
//     }
//
//     // Calling the main function
//     main();
//

// //----< algorithm >-------------------------//
// using std::fill;
// TYPESCRIPT_USAGE:
//     // Creating an array filled with 0
//     const a: number[] = Array(100).fill(0);
//
//     // Setting a range of elements to 1
//     a.fill(1, 2, 12);
//
//     // Setting the same range to 2
//     a.fill(2, 2, 12);
//
//     // Setting the same range to 3
//     a.fill(3, 2, 12);
//
//     console.log(a);
//

// using std::max;
// TYPESCRIPT_USAGE:
//     const l: number[] = [1, 2, 3, 4, 5, 6];
//
//     let maxNum = Number.MIN_SAFE_INTEGER;
//
//     for (const num of l) {
//     maxNum = Math.max(maxNum, num);
//     }
//
//     console.log(maxNum); // Output: 6
//

// using std::min;
// TYPESCRIPT_USAGE:
//     const l: number[] = [1, 2, 3, 4, 5, 6];
//
//     let minNum = Number.MAX_SAFE_INTEGER;
//
//     for (const num of l) {
//     minNum = Math.min(minNum, num);
//     }
//
//     console.log(minNum); // Output: 1
//

// using std::find;
// TYPESCRIPT_USAGE:
//     // For arrays
//     const l: number[] = [1, 2, 3, 3, 3, 3, 4, 5];
//
//     console.log(l.indexOf(3));    // Output: 2
//     console.log(l.indexOf(3, 4)); // Output: 4
//
//     // For tuples (arrays in TypeScript)
//     const t: number[] = [1, 2, 3, 3, 3, 3, 4, 5];
//
//     console.log(t.indexOf(3));    // Output: 2
//     console.log(t.indexOf(3, 4)); // Output: 4
//
//     // For strings
//     const s: string = "ABCCCCCD";
//
//     console.log(s.indexOf("C"));    // Output: 2
//     console.log(s.indexOf("C", 4)); // Output: 4
//

// using std::reverse;
// TYPESCRIPT_USAGE:
// REVERSE_ALL
//     let a: number[] = [1, 2, 3, 4, 5];
//     a.reverse();
//     console.log(a);
//
//     a = [...a].reverse();
//     console.log(a);
//
//     let t: number[] = [1, 2, 3, 4, 5];
//     t = [...t].reverse();
//     console.log(t);
//
//     let s: string = "ABC";
//     s = s.split("").reverse().join("");
//     console.log(s);
//
//     // REVERSE_PARTIAL
//     a = [1, 2, 3, 4, 5];
//     let sa: number[] = a.slice(1, 4);
//     sa.reverse();
//     console.log(sa);
//
//     sa = a.slice(1, 4).slice().reverse();
//     console.log(sa);
//
//     t = [1, 2, 3, 4, 5];
//     let st: number[] = t.slice(1, 4);
//     st = st.slice().reverse();
//     console.log(st);
//
//     s = "ABCDEF";
//     let ss: string = s.slice(1, 4).split("").reverse().join("");
//     console.log(ss);
//
// REVERSE_PARTIAL:
//     let a: number[] = [1, 2, 3, 4, 5];
//     let sa: number[] = a.slice(1, 4).reverse();
//     console.log(sa);
//
//     sa = a.slice(1, 4).slice().reverse();
//     console.log(sa);
//
//     let t: [number, number, number, number, number] = [1, 2, 3, 4, 5];
//     let st: [number, number, number] = t.slice(1, 4).reverse() as [number, number, number];
//     console.log(st);
//
//     let s: string = "ABCDEF";
//     let ss: string = s.slice(1, 4).split('').reverse().join('');
//     console.log(ss);
//

// using std::reduce;                          // Add / Concatenate together all elements of iterator range
// using std::accumulate;                      // Add / Concatenate together all elements of iterator range
// TYPESCRIPT_USAGE:
//     // Using reduce
//     let l: number[] = [1, 2, 3, 4, 5];
//     let sum: number = l.reduce((acc, num) => acc + num, 0);
//     console.log(sum);  // Output: 15
//
//     let strList: string[] = ["A", "B", "C"];
//     let concatenatedStr: string = strList.reduce((acc, str) => acc + str, "");
//     console.log(concatenatedStr);  // Output: "ABC"
//
//     // Using accumulate (a custom implementation)
//     function accumulate<T>(arr: T[], initialValue: T, callback: (acc: T, el: T) => T): T {
//         let accumulator: T = initialValue;
//         for (const element of arr) {
//             accumulator = callback(accumulator, element);
//         }
//         return accumulator;
//     }
//
//     let sumWithAccumulate: number = accumulate(l, 0, (acc, num) => acc + num);
//     console.log(sumWithAccumulate);  // Output: 15
//
//     let strWithAccumulate: string = accumulate(strList, "", (acc, str) => acc + str);
//     console.log(strWithAccumulate);  // Output: "ABC"
//

// using std::sort;                            // Intro-Sort (QuickSort => HeapSort when recursion depth exceeds certain level), NOT IN-PLACE & NOT STABLE
// TYPESCRIPT_USAGE:
//     // Sort an array of numbers with a custom function
//     let a: number[] = [5, 4, 3, 2, 1, 0];
//     a.sort((x, y) => myFunc(x, y)); // Replace myFunc with your custom comparison function
//     console.log(a);
//
//     // Sort a list of lists of numbers
//     let nestedList: number[][] = [[1, 3], [3, 5], [3, 3], [5, 3], [2, 2]];
//     nestedList.sort((a, b) => a[0] - b[0] || a[1] - b[1]);
//     console.log(nestedList);
//
//     // Sort a tuple of numbers (not in-place)
//     let t: number[] = [1, 2, 3, 4, 5];
//     let sortedT: number[] = Array.from(t).sort((x, y) => myFunc(x, y)); // Replace myFunc with your custom comparison function
//     console.log(sortedT);
//
//     // Sort a string (not in-place)
//     let s: string = "ABC";
//     let sortedS: string = Array.from(s).sort((x, y) => x.localeCompare(y)).join("");
//     console.log(sortedS);
//

// using std::partial_sort;                    // HeapSort elements in range ( iterFirst, iterLast ) ( exclusively ). IN-PLACE & NOT STABLE
// TYPESCRIPT_USAGE:
//     // Partially sort elements in range [start, end) using TypeScript
//     function partialSort<T>(arr: T[], start: number, end: number, compareFn?: (a: T, b: T) => number): void {
//         const sortedSlice = arr.slice(start, end).sort(compareFn);
//         arr.splice(start, sortedSlice.length, ...sortedSlice);
//     }
//
//     // Example usage
//     let a: number[] = [5, 4, 3, 2, 1, 0];
//     partialSort(a, 1, 4); // Sort elements at indices 1, 2, and 3 in-place
//     console.log(a); // Output: [5, 1, 2, 3, 4, 0]
//
//
// using std::stable_sort;                     // Merge-Sort elements. NOT IN-PLACE & STABLE
//

// using std::sort_heap;                       // HeapSort elements. IN-PLACE & NOT STABLE
// TYPESCRIPT_USAGE:
// MIN_HEAP:
//     class MinHeap<T> {
//         private heap: T[] = [];
//
//         get length(): number {
//             return this.heap.length;
//         }
//
//         private less(i: number, j: number): boolean {
//             return this.heap[i] < this.heap[j];
//         }
//
//         private swap(i: number, j: number): void {
//             [this.heap[i], this.heap[j]] = [this.heap[j], this.heap[i]];
//         }
//
//         push(value: T): void {
//             this.heap.push(value);
//             this.heapifyUp();
//         }
//
//         pop(): T | undefined {
//             const length = this.length;
//             if (length === 0) {
//                 return undefined;
//             }
//
//             this.swap(0, length - 1);
//             const poppedValue = this.heap.pop();
//             this.heapifyDown();
//             return poppedValue;
//         }
//
//         private heapifyUp(): void {
//             let current = this.length - 1;
//             while (current > 0) {
//                 const parent = Math.floor((current - 1) / 2);
//                 if (this.less(current, parent)) {
//                     this.swap(current, parent);
//                     current = parent;
//                 } else {
//                     break;
//                 }
//             }
//         }
//
//         private heapifyDown(): void {
//             let current = 0;
//             while (true) {
//                 const leftChild = 2 * current + 1;
//                 const rightChild = 2 * current + 2;
//                 let smallest = current;
//
//                 if (leftChild < this.length && this.less(leftChild, smallest)) {
//                     smallest = leftChild;
//                 }
//
//                 if (rightChild < this.length && this.less(rightChild, smallest)) {
//                     smallest = rightChild;
//                 }
//
//                 if (smallest !== current) {
//                     this.swap(current, smallest);
//                     current = smallest;
//                 } else {
//                     break;
//                 }
//             }
//         }
//     }
//
//     // Example usage with a min-heap (number comparison)
//     const nums: number[] = [3, 2, 20, 5, 3, 1, 2, 5, 6, 9, 10, 4];
//     const minHeap = new MinHeap<number>();
//
//     // add all the values to the heap
//     for (const val of nums) {
//         minHeap.push(val);
//     }
//
//     // print all the values from the heap
//     // which should be in ascending order
//     while (minHeap.length > 0) {
//         console.log(minHeap.pop());
//     }
//
//
// MAX_HEAP:
// class MaxHeap<T> {
//     private heap: T[] = [];
//
//     get length(): number {
//         return this.heap.length;
//     }
//
//     private greater(i: number, j: number): boolean {
//         return this.heap[i] > this.heap[j];
//     }
//
//     private swap(i: number, j: number): void {
//         [this.heap[i], this.heap[j]] = [this.heap[j], this.heap[i]];
//     }
//
//     push(value: T): void {
//         this.heap.push(value);
//         this.heapifyUp();
//     }
//
//     pop(): T | undefined {
//         const length = this.length;
//         if (length === 0) {
//             return undefined;
//         }
//
//         this.swap(0, length - 1);
//         const poppedValue = this.heap.pop();
//         this.heapifyDown();
//         return poppedValue;
//     }
//
//     private heapifyUp(): void {
//         let current = this.length - 1;
//         while (current > 0) {
//             const parent = Math.floor((current - 1) / 2);
//             if (this.greater(current, parent)) {
//                 this.swap(current, parent);
//                 current = parent;
//             } else {
//                 break;
//             }
//         }
//     }
//
//     private heapifyDown(): void {
//         let current = 0;
//         while (true) {
//             const leftChild = 2 * current + 1;
//             const rightChild = 2 * current + 2;
//             let largest = current;
//
//             if (leftChild < this.length && this.greater(leftChild, largest)) {
//                 largest = leftChild;
//             }
//
//             if (rightChild < this.length && this.greater(rightChild, largest)) {
//                 largest = rightChild;
//             }
//
//             if (largest !== current) {
//                 this.swap(current, largest);
//                 current = largest;
//             } else {
//                 break;
//             }
//         }
//     }
// }
//
// // Example usage with a max-heap (number comparison)
// const nums: number[] = [3, 2, 20, 5, 3, 1, 2, 5, 6, 9, 10, 4];
// const maxHeap = new MaxHeap<number>();
//
// // add all the values to the heap
// for (const val of nums) {
//     maxHeap.push(val);
// }
//
// // print all the values from the heap
// // which should be in descending order
// while (maxHeap.length > 0) {
//     console.log(maxHeap.pop());
// }
//

// using std::remove;
// TYPESCRIPT_USAGE:
//     // Example usage with an array
//     let l: number[] = [1, 2, 3, 4, 5, 6];
//
//     // Remove elements at index 1 and from index 4 to the end
//     l.splice(1, 1, ...l.slice(4));
//
//     // Remove elements at index 1 and from index 2 to the end
//     l.splice(1, 1, ...l.slice(2));
//
//     // Remove the first element
//     l.splice(0, 1);
//
//     // Remove the last element
//     l.splice(l.length - 1, 1);
//
//     // Example usage with an object
//     let m: { [key: string]: number } = { key1: val1, key2: val2, key3: val3 };
//
//     // Delete entries with key1 and key2
//     delete m.key1;
//     delete m.key2;
//

// using std::swap;
// TYPESCRIPT_USAGE:
//     // Example usage with an array
//     let l: number[] = [1, 2, 3, 4, 5, 6];
//
//     // Swap elements at index 1 and 3
//     [l[1], l[3]] = [l[3], l[1]];
//
//     // Example usage with an object
//     let m: { [key: string]: number } = { key1: val1, key2: val2, key3: val3 };
//
//     // Swap values associated with key1 and key3
//     [m.key1, m.key3] = [m.key3, m.key1];
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

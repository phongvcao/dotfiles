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
//     import mysql from 'mysql2/promise';
//
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
// TYPESCRIPT_USAGE:
//     const l1: number[] = [1, 2, 3, 3, 3, 3, 3, 5, 6];
//
//     const lb1: number = lowerBound(l1, 3);
//
//     if (lb1 < l1.length && l1[lb1] === 3) {
//         console.log(lb1);  // output: 2
//     } else {
//         console.log(l1.length);
//     }
//
//     const l2: number[] = [6, 5, 3, 3, 3, 3, 3, 2, 1];
//
//     const ubDesc: number = upperBoundDescending(l2, 3);
//
//     if (ubDesc >= 1 && ubDesc < l2.length) {
//         console.log(ubDesc - 1);  // output: 1
//     } else {
//         console.log(ubDesc);  // output: l2.length
//     }
//
//     // Binary Search functions
//     function lowerBound(arr: number[], target: number): number {
//         let low = 0;
//         let high = arr.length;
//
//         while (low < high) {
//             const mid = Math.floor((low + high) / 2);
//             if (arr[mid] < target) {
//                 low = mid + 1;
//             } else {
//                 high = mid;
//             }
//         }
//
//         return low;
//     }
//
//     function upperBoundDescending(arr: number[], target: number): number {
//         let low = 0;
//         let high = arr.length;
//
//         while (low < high) {
//             const mid = Math.floor((low + high) / 2);
//             if (arr[mid] <= target) {
//                 low = mid + 1;
//             } else {
//                 high = mid;
//             }
//         }
//
//         return low;
//     }
//
//
// TYPESCRIPT_USAGE_SUBOPTIMAL:
//     const l1: number[] = [1, 2, 3, 3, 3, 3, 3, 5, 6];
//
//     const lb1: number = l1.findIndex((num) => num >= 3);
//
//     if (lb1 !== -1 && l1[lb1] === 3) {
//         console.log(lb1);  // output: 2
//     } else {
//         console.log(l1.length);
//     }
//
//     const l2: number[] = [6, 5, 3, 3, 3, 3, 3, 2, 1];
//
//     const ubDesc: number = l2.findIndex((num) => num <= 3);
//
//     if (ubDesc >= 1 && ubDesc < l2.length) {
//         console.log(ubDesc - 1);  // output: 1
//     } else {
//         console.log(ubDesc);  // output: l2.length
//     }
//
//
// TYPESCRIPT_TRICKS:
//     const l: number[] = [1, 2, 3, 3, 3, 3, 3, 5, 6];
//
//     const i1: number = binarySearchInts(l, 3);
//     console.log(i1);  // output: 2
//
//     const i2: number = binarySearchInts(l, 4);
//     console.log(i2);  // output: 7
//
//     const lFloat64s: number[] = [1.0, 2.0, 3.0, 3.0, 3.0, 3.0, 3.0, 5.0, 6.0];
//     const i3: number = binarySearchFloat64s(lFloat64s, 4.0);
//     console.log(i3);
//
//     const lStrings: string[] = ["abcd", "efgh", "ijkl"];
//     const i4: number = binarySearchStrings(lStrings, "abcd");
//     console.log(i4);
//
//     // Binary Search functions
//     function binarySearchInts(arr: number[], target: number): number {
//         let low = 0;
//         let high = arr.length - 1;
//
//         while (low <= high) {
//             const mid = Math.floor((low + high) / 2);
//             const midValue = arr[mid];
//
//             if (midValue === target) {
//                 return mid; // Element found
//             } else if (midValue < target) {
//                 low = mid + 1; // Search the right half
//             } else {
//                 high = mid - 1; // Search the left half
//             }
//         }
//
//         return -1; // Element not found
//     }
//
//     function binarySearchFloat64s(arr: number[], target: number): number {
//         // Adjust as needed based on the actual requirements and data types
//         return binarySearchInts(arr, target);
//     }
//
//     function binarySearchStrings(arr: string[], target: string): number {
//         let low = 0;
//         let high = arr.length - 1;
//
//         while (low <= high) {
//             const mid = Math.floor((low + high) / 2);
//             const midValue = arr[mid];
//
//             if (midValue === target) {
//                 return mid; // Element found
//             } else if (midValue < target) {
//                 low = mid + 1; // Search the right half
//             } else {
//                 high = mid - 1; // Search the left half
//             }
//         }
//
//         return -1; // Element not found
//     }
//

// using std::next_permutation;
// using std::prev_permutation;
// TYPESCRIPT_USAGE:
//     const l: number[] = [5, 4, 3, 2, 1, 0];
//     const lStrings: string[] = ["F", "E", "E", "E", "D", "C", "B"];
//
//     // Permutations for arrays
//     const permutationsL: number[][] = permutations(l);
//     permutationsL.forEach(p => console.log(p));
//
//     const permutationsLStrings: string[][] = permutations(lStrings);
//     permutationsLStrings.forEach(p => console.log(p));
//
//     // Permutations for tuples
//     const t: number[] = [1, 2, 3, 3, 3, 3, 4, 5];
//     const permutationsT: number[][] = permutations(t);
//     permutationsT.forEach(p => console.log(p));
//
//     // Permutations for objects (dictionary)
//     const d: Record<string, number> = { key1: 1, key2: 2, key3: 3 };
//     const permutationsD: Record<string, number>[] = permutations(Object.entries(d));
//     permutationsD.forEach(p => console.log(Object.fromEntries(p)));
//
//     // Permutations for strings
//     const s: string = "abc";
//     const permutationsS: string[][] = permutations(s.split(""));
//     permutationsS.forEach(p => console.log(p.join("")));
//
//     // Permutations function
//     function permutations<T>(arr: T[]): T[][] {
//         const result: T[][] = [];
//         const used: boolean[] = Array(arr.length).fill(false);
//         const currentPermutation: T[] = [];
//
//         function backtrack() {
//             if (currentPermutation.length === arr.length) {
//                 result.push([...currentPermutation]);
//                 return;
//             }
//
//             for (let i = 0; i < arr.length; i++) {
//                 if (used[i]) continue;
//
//                 used[i] = true;
//                 currentPermutation.push(arr[i]);
//
//                 backtrack();
//
//                 used[i] = false;
//                 currentPermutation.pop();
//             }
//         }
//
//         backtrack();
//         return result;
//     }
//
//
// using std::set_intersection;                // Only works on std::set and not std::unordered_set
// TYPESCRIPT_USAGE:
//     const s1: Set<number> = new Set([1, 2, 3, 4, 5, 6]);
//     const s2: Set<number> = new Set([4, 5, 6, 7, 8, 9]);
//
//     const intersection: Set<number> = new Set([...s1].filter(value => s2.has(value)));
//
//     console.log(intersection);
//
//
// using std::set_difference;                  // Only works on std::set and not std::unordered_set
// TYPESCRIPT_USAGE:
//     const s1: Set<number> = new Set([1, 2, 3, 4, 5, 6]);
//     const s2: Set<number> = new Set([4, 5, 6, 7, 8, 9]);
//
//     const difference: Set<number> = new Set([...s1].filter(value => !s2.has(value)));
//
//     console.log(difference);
//
//
// using std::set_union;
// TYPESCRIPT_USAGE:
//     const s1: Set<number> = new Set([1, 2, 3, 4, 5, 6]);
//     const s2: Set<number> = new Set([4, 5, 6, 7, 8, 9]);
//
//     const unionSet: Set<number> = new Set([...s1, ...s2]);
//
//     console.log(unionSet);
//

// using std::lower_bound;                     // Returns iter pointing to first element >= value
// TYPESCRIPT_USAGE:
//     const l: number[] = [1, 2, 3, 3, 3, 3, 3, 5, 6];
//
//     // lower_bound equivalent function
//     function lowerBound(arr: number[], value: number): number {
//         let low = 0;
//         let high = arr.length;
//
//         while (low < high) {
//             const mid = Math.floor((low + high) / 2);
//
//             if (arr[mid] < value) {
//                 low = mid + 1;
//             } else {
//                 high = mid;
//             }
//         }
//
//         return low;
//     }
//
//     // Search for value >= 3
//     const lb: number = lowerBound(l, 3);
//     console.log(lb < l.length ? lb : l.length); // Output: 2
//
//     // Search for value < 3 in descending order
//     const lbDesc: number = lowerBound(l.reverse(), 3);
//     const resultDesc: number = lbDesc >= 1 && lbDesc < l.length ? l.length - lbDesc - 1 : l.length;
//     console.log(resultDesc); // Output: 6
//

// using std::upper_bound;                     // Returns iter pointing to first element > value
// TYPESCRIPT_USAGE:
//     const l: number[] = [1, 2, 3, 3, 3, 3, 3, 5, 6];
//
//     // upper_bound equivalent function
//     function upperBound(arr: number[], value: number): number {
//         let low = 0;
//         let high = arr.length;
//
//         while (low < high) {
//             const mid = Math.floor((low + high) / 2);
//
//             if (arr[mid] <= value) {
//                 low = mid + 1;
//             } else {
//                 high = mid;
//             }
//         }
//
//         return low;
//     }
//
//     // Search for value > 3
//     const ub: number = upperBound(l, 3);
//     console.log(ub < l.length ? ub : l.length); // Output: 6
//
//     // Search for value <= 3 in descending order
//     const ubDesc: number = upperBound(l.reverse(), 3);
//     const resultDesc: number = ubDesc >= 1 && ubDesc < l.length ? l.length - ubDesc - 1 : l.length;
//     console.log(resultDesc); // Output: 1
//

// using std::transform;                       // Apply the given function to a range and store result in another range
// using std::nth_element;
//
// //----< memory >----------------------------//
// using std::make_unique;
// using std::unique_ptr;
// using std::make_shared;
// using std::shared_ptr;
// using std::weak_ptr;
//

// //----< cctype >----------------------------//
// using std::isalnum;
// TYPESCRIPT_USAGE:
//     const c1: string = 'b';
//     console.log(isLetterOrDigit(c1)); // Output: true
//
//     const c2: string = 'c';
//     console.log(isLetterOrDigit(c2)); // Output: true
//
//     const c3: string = 'A';
//     console.log(isLetterOrDigit(c3)); // Output: true
//
//     const c4: string = 'B';
//     console.log(isLetterOrDigit(c4)); // Output: true
//
//     const c5: string = '1';
//     console.log(isLetterOrDigit(c5)); // Output: false
//
//     const c6: string = '2';
//     console.log(isLetterOrDigit(c6)); // Output: false
//
//     const c7: string = '!';
//     console.log(isLetterOrDigit(c7)); // Output: false
//
//     const c8: string = '?';
//     console.log(isLetterOrDigit(c8)); // Output: false
//
//     // Function to check if a character is a letter or a digit
//     function isLetterOrDigit(c: string): boolean {
//         return isLetter(c) || isDigit(c);
//     }
//
//     // Function to check if a character is a letter or a digit
//     function isLetterOrDigit(c: string): boolean {
//         return /[a-zA-Z0-9]/.test(c);
//     }
//
//     // Function to check if a character is a letter
//     function isLetter(c: string): boolean {
//         return (c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z');
//     }
//
//     // Function to check if a character is a digit
//     function isDigit(c: string): boolean {
//         return c >= '0' && c <= '9';
//     }
//

// using std::isalpha;
// TYPESCRIPT_USAGE:
//     const c1: string = 'b';
//     console.log(isLetter(c1)); // Output: true
//
//     const c2: string = 'c';
//     console.log(isLetter(c2)); // Output: true
//
//     const c3: string = 'A';
//     console.log(isLetter(c3)); // Output: true
//
//     const c4: string = 'B';
//     console.log(isLetter(c4)); // Output: true
//
//     const c5: string = '1';
//     console.log(isLetter(c5)); // Output: false
//
//     const c6: string = '2';
//     console.log(isLetter(c6)); // Output: false
//
//     const c7: string = '!';
//     console.log(isLetter(c7)); // Output: false
//
//     const c8: string = '?';
//     console.log(isLetter(c8)); // Output: false
//
//     // Function to check if a character is a letter
//     function isLetter(c: string): boolean {
//         return /[a-zA-Z]/.test(c);
//     }
//
//     // Function to check if a character is a letter
//     function isLetter(c: string): boolean {
//         const lowercaseC = c.toLowerCase();
//         return lowercaseC >= 'a' && lowercaseC <= 'z';
//     }
//

// using std::islower;
// TYPESCRIPT_USAGE:
//     const c1: string = 'b';
//     console.log(isLower(c1)); // Output: true
//
//     const c2: string = 'c';
//     console.log(isLower(c2)); // Output: true
//
//     const c3: string = 'A';
//     console.log(isLower(c3)); // Output: false
//
//     const c4: string = 'B';
//     console.log(isLower(c4)); // Output: false
//
//     const c5: string = '1';
//     console.log(isLower(c5)); // Output: false
//
//     const c6: string = '2';
//     console.log(isLower(c6)); // Output: false
//
//     const c7: string = '!';
//     console.log(isLower(c7)); // Output: false
//
//     const c8: string = '?';
//     console.log(isLower(c8)); // Output: false
//
//     // Function to check if a character is lowercase
//     function isLower(c: string): boolean {
//         return /[a-z]/.test(c);
//     }
//
//     // Function to check if a character is lowercase
//     function isLower(c: string): boolean {
//         return c >= 'a' && c <= 'z';
//     }
//

// using std::isupper;
// TYPESCRIPT_USAGE:
//     // Function to check if a character is uppercase
//     function isUpper(c: string): boolean {
//         return c >= 'A' && c <= 'Z';
//     }
//
//     // TypeScript Usage:
//     const c1: string = 'A';
//     console.log(isUpper(c1)); // Output: true
//
//     const c2: string = 'b';
//     console.log(isUpper(c2)); // Output: false
//
//     const c3: string = '1';
//     console.log(isUpper(c3)); // Output: false
//
//     const c4: string = '!';
//     console.log(isUpper(c4)); // Output: false
//
//     const c5: string = '?';
//     console.log(isUpper(c5)); // Output: false
//

// using std::isdigit;
// TYPESCRIPT_USAGE:
//     // Function to check if a character is a digit
//     function isDigit(c: string): boolean {
//         return c >= '0' && c <= '9';
//     }
//
//     // Function to check if a character is a number
//     function isNumber(c: string): boolean {
//         return !isNaN(Number(c));
//     }
//
//     // TypeScript Usage:
//     const c1: string = '1';
//     console.log(isDigit(c1));   // Output: true
//     console.log(isNumber(c1));  // Output: true
//
//     const c2: string = 'a';
//     console.log(isDigit(c2));   // Output: false
//     console.log(isNumber(c2));  // Output: false
//
//     const c3: string = '2';
//     console.log(isDigit(c3));   // Output: true
//     console.log(isNumber(c3));  // Output: true
//
//     const c4: string = 'b';
//     console.log(isDigit(c4));   // Output: false
//     console.log(isNumber(c4));  // Output: false
//

// using std::isspace;                         // Check whether char is whitespace character (space, newline, tab, etc. )
// using std::isblank;                         // Check whether char is blank character ( space or tab )
// TYPESCRIPT_USAGE:
//     // Function to check whether a character is a whitespace character (space, newline, tab, etc.)
//     function isSpace(c: string): boolean {
//         return /\s/.test(c);
//     }
//
//     // Function to check whether a character is a blank character (space or tab)
//     function isBlank(c: string): boolean {
//         return /\s/.test(c) && !/\S/.test(c);
//     }
//
//     // TypeScript Usage:
//     const c1: string = ' ';
//     console.log(isSpace(c1));  // Output: true
//     console.log(isSpace(' '));  // Output: true
//
//     const c2: string = 'd';
//     console.log(isSpace(c2));  // Output: false
//     console.log(isSpace('d'));  // Output: false
//
//     const c3: string = '\t';
//     console.log(isBlank(c3));  // Output: true (tab is considered a blank character)
//
//     const c4: string = 'A';
//     console.log(isBlank(c4));  // Output: false
//

// using std::tolower;
// TYPESCRIPT_USAGE:
//     // Function to convert a character to lowercase
//     function toLower(c: string): string {
//         return c.toLowerCase();
//     }
//
//     // Function to convert a string to lowercase
//     function toLowerCase(s: string): string {
//         return s.toLowerCase();
//     }
//
//     // TypeScript Usage:
//     const c1: string = 'A';
//     console.log(toLower(c1));  // Output: a
//     console.log(toLower('B'));  // Output: b
//
//     const s: string = "GOPher#$#@";
//     console.log(toLowerCase(s));  // Output: "gopherr#$#@"
//

// using std::toupper;
// TYPESCRIPT_USAGE:
//     // Function to convert a character to uppercase
//     function toUpper(c: string): string {
//         return c.toUpperCase();
//     }
//
//     // Function to convert a string to uppercase
//     function toUpperString(s: string): string {
//         return s.toUpperCase();
//     }
//
//     // TypeScript Usage:
//     const charA = 'a';
//     console.log(toUpper(charA));  // Output: A
//
//     const charB = 'b';
//     console.log(toUpper(charB));  // Output: B
//
//     const strGopher = 'Gopher#$#@';
//     console.log(toUpperString(strGopher));  // Output: GOPHER#$#@
//

// //----< stdexcept >-------------------------//
// using std::runtime_error;
// using std::invalid_argument;
// using std::out_of_range;
//
// //----< limits >----------------------------//
// using std::numeric_limits;                  // ::lowest() & ::max() for smallest & biggest representable value, respectively
//                                             // ::infinity() only works for `double` / `float` / 'long double'. ::has_infinity() == false for ALL other types.
// TYPESCRIPT_USAGE:
//     console.log(Number.MIN_SAFE_INTEGER);  // Smallest representable integer value
//     console.log(Number.MAX_SAFE_INTEGER);  // Largest representable integer value
//     console.log(Number.NEGATIVE_INFINITY);  // Negative (float) infinity
//     console.log(Number.POSITIVE_INFINITY);  // Positive (float) infinity
//
//
// //----< numeric >---------------------------//
// using std::iota;
// using std::gcd;
// using std::lcm;
// using std::partial_sum;                     // Calculate partial_sum of range beginIter, endIter and put result to 3rd argument outIter

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
// TYPESCRIPT_USAGE:
//     class Solution {
//         printNumber(num: number): Promise<number> {
//             return new Promise((resolve) => {
//                 let count = 0;
//
//                 const printInterval = setInterval(() => {
//                     console.log(`Thread ${num} printing ${num}`);
//                     count++;
//
//                     if (count === 5) {
//                         clearInterval(printInterval);
//                         resolve(num * 100);
//                     }
//                 }, 500);
//             });
//         }
//
//         async runThreads() {
//             console.log(`Main thread started.`);
//
//             const start = Date.now();
//
//             // Creating two promises and awaiting their resolution
//             const result1 = await this.printNumber(1);
//             const result2 = await this.printNumber(2);
//
//             const end = Date.now();
//
//             console.log(`Result 1: ${result1}`);
//             console.log(`Result 2: ${result2}`);
//             console.log(`Main thread finished. Elapsed time: ${end - start} milliseconds`);
//         }
//     }
//
//     // Running the async function
//     const solution = new Solution();
//     solution.runThreads();
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
// TYPESCRIPT_USAGE:
//     class Solution {
//         private isMutexLocked: boolean = false;
//
//         private async acquireMutex(): Promise<void> {
//             while (this.isMutexLocked) {
//                 await new Promise(resolve => setTimeout(resolve, 10));
//             }
//             this.isMutexLocked = true;
//         }
//
//         private releaseMutex(): void {
//             this.isMutexLocked = false;
//         }
//
//         private async printNumbers(n: number, result: number[]): Promise<void> {
//             await this.acquireMutex();
//             try {
//                 for (let i = 1; i <= n; i++) {
//                     console.log(i, end=' ');
//                     result.push(i);
//                 }
//                 console.log();
//             } finally {
//                 this.releaseMutex();
//             }
//         }
//
//         async runThreads(): Promise<void> {
//             const numThreads = 4;
//             const threads: Promise<void>[] = [];
//             const results: number[][] = [];
//
//             for (let i = 0; i < numThreads; i++) {
//                 results[i] = [];
//                 threads.push(this.printNumbers(10, results[i]));
//             }
//
//             await Promise.all(threads);
//
//             for (let i = 0; i < numThreads; i++) {
//                 console.log(`Result ${i}: ${results[i].join(' ')}`);
//             }
//         }
//     }
//
//     const s = new Solution();
//     s.runThreads();
//

// //----< shared_mutex >----------------------//
// using std::shared_mutex;
// TYPESCRIPT_USAGE:
//     class SafeCounter {
//         private count: number = 0;
//         private lock: boolean = false;
//
//         // Increment the counter safely
//         Inc(): void {
//             while (this.lock) {
//                 // Wait for the lock to be released
//             }
//
//             this.lock = true; // Acquire the lock
//             this.count += 1;
//             this.lock = false; // Release the lock
//         }
//
//         // Get the current counter value safely
//         Value(): number {
//             while (this.lock) {
//                 // Wait for the lock to be released
//             }
//
//             this.lock = true; // Acquire the lock
//             const value = this.count;
//             this.lock = false; // Release the lock
//             return value;
//         }
//     }
//
//     // Function to simulate multiple threads incrementing the counter
//     function simulateThreads(counter: SafeCounter): Promise<void> {
//         const threads: Promise<void>[] = [];
//
//         for (let i = 0; i < 10; i++) {
//             const thread = new Promise<void>((resolve) => {
//                 for (let _ = 0; _ < 100; _++) {
//                     counter.Inc();
//                 }
//                 resolve();
//             });
//
//             threads.push(thread);
//         }
//
//         return Promise.all(threads);
//     }
//
//     // Main function
//     async function main() {
//         const counter = new SafeCounter();
//         await simulateThreads(counter);
//         console.log("Final count:", counter.Value());
//     }
//
//     // Run the main function
//     main();
//

// //----< condition_variable >----------------//
// using std::condition_variable;
// TYPESCRIPT_USAGE:
//     class ConditionVariable {
//         private listeners: (() => void)[] = [];
//
//         async wait(): Promise<void> {
//             return new Promise<void>((resolve) => {
//                 this.listeners.push(resolve);
//             });
//         }
//
//         signal(): void {
//             const listener = this.listeners.shift();
//             if (listener) {
//                 listener();
//             }
//         }
//     }
//
//     class SyncMutex {
//         private locked: boolean = false;
//
//         async lock(): Promise<void> {
//             return new Promise<void>((resolve) => {
//                 const acquireLock = () => {
//                     if (!this.locked) {
//                         this.locked = true;
//                         resolve();
//                     } else {
//                         setImmediate(acquireLock);
//                     }
//                 };
//
//                 acquireLock();
//             });
//         }
//
//         unlock(): void {
//             this.locked = false;
//         }
//     }
//
//     class SyncCond {
//         private mutex: SyncMutex;
//         private condition: ConditionVariable;
//
//         constructor(mutex: SyncMutex) {
//             this.mutex = mutex;
//             this.condition = new ConditionVariable();
//         }
//
//         async wait(): Promise<void> {
//             await this.condition.wait();
//             this.mutex.unlock();
//         }
//
//         signal(): void {
//             this.condition.signal();
//         }
//     }
//
//     const data: number[] = [];
//     const mutex = new SyncMutex();
//     const cond = new SyncCond(mutex);
//
//     async function producer() {
//         for (let i = 0; i < 5; i++) {
//             await mutex.lock();
//             data.push(i);
//             console.log("Producer produced:", i);
//             cond.signal();
//             mutex.unlock();
//         }
//     }
//
//     async function consumer() {
//         for (let i = 0; i < 5; i++) {
//             await mutex.lock();
//             while (data.length === 0) {
//                 await cond.wait();
//             }
//             const val = data.shift();
//             console.log("Consumer consumed:", val);
//             mutex.unlock();
//         }
//     }
//
//     async function main() {
//         // Run producer and consumer concurrently
//         await Promise.all([producer(), consumer()]);
//
//         // Ensure that producer and consumer have completed before exiting
//         await Promise.all([producer(), consumer()]);
//
//         // OUTPUT: Producer produced: 0
//         //         Consumer consumed: 0
//         //         Producer produced: 1
//         //         Consumer consumed: 1
//         //         Producer produced: 2
//         //         Consumer consumed: 2
//         //         Producer produced: 3
//         //         Consumer consumed: 3
//         //         Producer produced: 4
//         //         Consumer consumed: 4
//     }
//
//     main();
//

// TYPESCRIPT_USAGE_SEMAPHORE:
//     class Semaphore {
//         private count: number;
//
//         constructor(private maxCount: number) {
//             this.count = maxCount;
//         }
//
//         acquire(): Promise<void> {
//             return new Promise((resolve) => {
//                 const wait = () => {
//                     if (this.count > 0) {
//                         this.count--;
//                         resolve();
//                     } else {
//                         setTimeout(wait, 10);
//                     }
//                 };
//                 wait();
//             });
//         }
//
//         release(): void {
//             this.count++;
//         }
//     }
//
//     class Thread {
//         constructor(private target: Function, private args: any[]) {}
//
//         start(): void {
//             this.target(...this.args);
//         }
//
//         join(): Promise<void> {
//             return new Promise((resolve) => {
//                 setTimeout(() => {
//                     resolve();
//                 }, 0);
//             });
//         }
//     }
//
//     const sem = new Semaphore(2);
//     const threads: Thread[] = [];
//
//     async function worker(i: number): Promise<void> {
//         await sem.acquire();
//         console.log(`Worker ${i} started`);
//         // do some work
//         console.log(`Worker ${i} finished`);
//         sem.release();
//     }
//
//     for (let i = 1; i <= 10; i++) {
//         const t = new Thread(worker, [i]);
//         threads.push(t);
//         t.start();
//     }
//
//     async function runThreads(): Promise<void> {
//         await Promise.all(threads.map((t) => t.join()));
//     }
//
//     // Run the threads
//     runThreads();
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

// //----< curlpp/*.hpp >----------------------//
// TYPESCRIPT_USAGE:
// TYPESCRIPT_USAGE_FRONTEND:
//     // HTTP GET
//     const getUrl = 'https://www.example.com';
//
//     fetch(getUrl)
//     .then((response) => response.text())
//     .then((data) => {
//         console.log(data);
//     })
//     .catch((error) => {
//         console.error('Error:', error);
//     });
//
//     // HTTP POST
//     const postUrl = 'http://www.example.com';
//     const jsonData = JSON.stringify({
//         key1: 'value1',
//         key2: 'value2'
//     });
//
//     fetch(postUrl, {
//         method: 'POST',
//         headers: {
//             'Content-Type': 'application/json'
//         },
//         body: jsonData
//     })
//     .then((response) => response.text())
//     .then((data) => {
//         console.log('Response Status:', response.status);
//         console.log('RESPONSE BODY:', data);
//     })
//     .catch((error) => {
//         console.error('Error:', error);
//     });
//
//
// TYPESCRIPT_USAGE_BACKEND:
//     import * as https from 'https';
//     import * as http from 'http';
//
//     // HTTP GET
//     const getUrl = 'https://www.example.com';
//     https.get(getUrl, (resp) => {
//         let data = '';
//
//         // A chunk of data has been received.
//         resp.on('data', (chunk) => {
//             data += chunk;
//         });
//
//         // The whole response has been received.
//         resp.on('end', () => {
//             console.log(data);
//         });
//
//     }).on('error', (err) => {
//         console.log(`Error: ${err.message}`);
//     });
//
//     // HTTP POST
//     const jsonData = JSON.stringify({
//         key1: 'value1',
//         key2: 'value2'
//     });
//
//     const postUrl = 'http://www.example.com';
//
//     const options: http.RequestOptions = {
//         method: 'POST',
//         headers: {
//             'Content-Type': 'application/json',
//             'Content-Length': Buffer.byteLength(jsonData)
//         }
//     };
//
//     const req = http.request(postUrl, options, (resp) => {
//         let data = '';
//
//         // A chunk of data has been received.
//         resp.on('data', (chunk) => {
//             data += chunk;
//         });
//
//         // The whole response has been received.
//         resp.on('end', () => {
//             console.log('Response Status:', resp.statusCode);
//             console.log('RESPONSE BODY:', data);
//         });
//
//     });
//
//     // Handle errors
//     req.on('error', (err) => {
//         console.log(`Error: ${err.message}`);
//     });
//
//     // Send the request with the JSON data
//     req.write(jsonData);
//     req.end();
//
//
// //------------------------------------------//
//

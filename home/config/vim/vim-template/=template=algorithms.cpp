// uncomment to disable assert()
// #define NDEBUG
#include <cassert>
#include <iostream>
#include <cstdio>
#include <iomanip>
#include <ios>
#include <sstream>
#include <fstream>
#include <string>
#include <cmath>
#include <cstdlib>
#include <ctime>
#include <functional>
#include <array>
#include <vector>
#include <map>
#include <unordered_map>
#include <set>
#include <unordered_set>
#include <list>
#include <forward_list>
#include <deque>
#include <queue>
#include <stack>
#include <tuple>
#include <bitset>
#include <iterator>
#include <utility>
#include <algorithm>
#include <memory>
#include <cctype>
#include <stdexcept>
#include <limits>
#include <numeric>
#include <thread>
#include <future>
#include <mutex>
#include <condition_variable>

//----< iostream >--------------------------//
using std::cout;
using std::cin;
using std::endl;
using std::ostream;
using std::istream;

//----< cstdio >----------------------------//
using std::printf;
using std::fprintf;
using std::sprintf;
using std::snprintf;

//----< iomanip >---------------------------//
using std::setprecision;
using std::setw;

//----< ios >-------------------------------//
using std::hex;
using std::dec;
using std::oct;
using std::fixed;

//----< sstream >---------------------------//
using std::stringstream;
using std::ostringstream;
using std::istringstream;

//----< fstream >---------------------------//
using std::ofstream;
using std::ifstream;

//----< string >----------------------------//
using std::getline;
using std::string;
using std::to_string;
using std::stoi;                            // PREFERRED stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
using std::stol;                            // PREFERRED stol() over atol() since stoi() allows conversion from binary & hex strings to int.
using std::stoll;                           // PREFERRED stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.

//----< cmath >-----------------------------//
using std::sqrt;
using std::pow;
using std::log;                             // log( <arg> )
using std::exp;                             // e ^ <arg>
using std::abs;
using std::fabs;
using std::floor;                           // Round down to nearest integer double
using std::ceil;                            // Round up to nearest integer double
using std::trunc;                           // Truncate the fractional part to get the integer part
using std::round;                           // Round to nearest integer double

//----< cstdlib >---------------------------//
using std::rand;
using std::srand;
using std::atoi;                            // DEPRECATED: Preferred stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
using std::atol;                            // DEPRECATED: Preferred stol() over atol() since stoi() allows conversion from binary & hex strings to int.
using std::atoll;                           // DEPRECATED: Preferred stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.

//----< ctime >-----------------------------//
using std::time;

//----< functional >------------------------//
using std::hash;
using std::greater;                         // lhs > rhs. Used for MinPQ
using std::less;                            // lhs < rhs. Used for MaxPQ. Default for priority_queue<>
using std::less_equal;
using std::greater_equal;
using std::bind;
using namespace std::placeholders;          // placeholders ( _1, _2, ..., _N ) for std::bind

//----< array >-----------------------------//
using std::array;                           // Fixed & Unordered Array

//----< vector >----------------------------//
using std::vector;                          // Resizable & Unordered Array

//----< map >-------------------------------//
using std::map;                             // Ordered Map (Red-Black Tree)
using std::multimap;                        // Ordered Map (Red-Black Tree) & Allow duplicated keys

//----< unordered_map >---------------------//
using std::unordered_map;                   // HashMap (SeparateChainingHashST)
using std::unordered_multimap;              // Ordered Map (Red-Black Tree) & Allow duplicated keys

//----< set >-------------------------------//
using std::set;                             // Ordered Set (Red-Black Tree)
using std::multiset;                        // Ordered Set (Red-Black Tree) & Allow duplicated keys

//----< unordered_set >---------------------//
using std::unordered_set;                   // HashSet (SeparateChainingHashST)
using std::unordered_multiset;              // HashSet (SeparateChainingHashST) & Allow duplicated keys

//----< list >------------------------------//
using std::list;                            // Doubly-Linked List with size() ( O( 1 ) )

//----< forward_list >----------------------//
using std::forward_list;                    // Singly-Linked List without size() function ( so O( N ) if we need to get size() )

//----< deque >-----------------------------//
using std::deque;                           // Vector of fixed-size Vectors: 1 fixed-size vector for each end of the deque

//----< queue >-----------------------------//
using std::queue;                           // Non-Iterable & Use std::deque as underlying data structure
using std::priority_queue;                  // MaxPQ (MaxHeap) & Non-Iterable.
//                                          // => Pass std::greater<> as template params to create MinPQ (MinHeap)

//----< stack >-----------------------------//
using std::stack;                           // Non-Iterable & Use std::deque as underlying data structure

//----< tuple >-----------------------------//
using std::tuple;                           // Non-Iterable & Use std::pair as underlying data structure
using std::get;                             // Access & Set element in tuple using get< index >( tuple_var )

//----< bitset >----------------------------//
using std::bitset;

//----< iterator >--------------------------//
using std::next;                            // Return an advanced iter without changing original iter
using std::prev;                            // Return an decremented iter without changing original iter
using std::distance;                        // Calculate distance between 2 iterators
using std::inserter;                        // Insert element into first arg starting from position in second arg

//----< utility >---------------------------//
using std::pair;
using std::make_pair;
using std::move;                            // Move resources between objects - typically used with std::unique_ptr<T>
using std::ref;                             // Returns a reference that can be used to modify the referenced object
using std::cref;                            // Returns a const reference that cannot be modified

//----< algorithm >-------------------------//
using std::fill;
using std::max;
using std::min;
using std::find;
using std::reverse;
using std::reduce;                          // Add / Concatenate together all elements of iterator range
using std::accumulate;                      // Add / Concatenate together all elements of iterator range
using std::sort;                            // Intro-Sort (QuickSort => HeapSort when recursion depth exceeds certain level), NOT IN-PLACE & NOT STABLE
using std::partial_sort;                    // HeapSort elements in range ( iterFirst, iterLast ) ( exclusively ). IN-PLACE & NOT STABLE
using std::stable_sort;                     // Merge-Sort elements. NOT IN-PLACE & STABLE
using std::sort_heap;                       // HeapSort elements. IN-PLACE & NOT STABLE
using std::remove;
using std::swap;
using std::binary_search;
using std::next_permutation;
using std::prev_permutation;
using std::set_intersection;                // Only works on std::set and not std::unordered_set
using std::set_difference;                  // Only works on std::set and not std::unordered_set
using std::set_union;
using std::lower_bound;                     // Returns iter pointing to first element >= value
using std::upper_bound;                     // Returns iter pointing to first element > value
using std::transform;                       // Apply the given function to a range and store result in another range
using std::nth_element;

//----< memory >----------------------------//
using std::make_unique;
using std::unique_ptr;
using std::make_shared;
using std::shared_ptr;
using std::weak_ptr;

//----< cctype >----------------------------//
using std::isalnum;
using std::isalpha;
using std::islower;
using std::isupper;
using std::isdigit;
using std::isspace;                         // Check whether char is whitespace character (space, newline, tab, etc. )
using std::isblank;                         // Check whether char is blank character ( space or tab )
using std::tolower;
using std::toupper;

//----< stdexcept >-------------------------//
using std::runtime_error;
using std::invalid_argument;
using std::out_of_range;

//----< limits >----------------------------//
using std::numeric_limits;                  // ::lowest() & ::max() for smallest & biggest representable value, respectively
                                            // ::infinity() only works for `double` / `float` / 'long double'. ::has_infinity() == false for ALL other types.

//----< numeric >---------------------------//
using std::iota;
using std::gcd;
using std::lcm;
using std::partial_sum;                     // Calculate partial_sum of range beginIter, endIter and put result to 3rd argument outIter

//----< thread >----------------------------//
using std::thread;
namespace this_thread = std::this_thread;   // Manipulate / Info of the current thread
// using this_thread::get_id;                  // Get the current thread's id
// using this_thread::yield;                   // Yield to other threads
// using this_thread::sleep_until;             // Sleep until time point
// using this_thread::sleep_for;               // Sleep for time span
// CPP_USAGE:
//     class Solution {
//     private:
//         void print_number(int num, int& result) {
//             for (int i = 0; i < 5; ++i) {
//                 cout << "Thread " << this_thread::get_id() << " printing " << num << endl;
//                 this_thread::sleep_for(chrono::milliseconds(500)); // sleep for 500ms
//             }
//             result = num * 100; // Store the result of the calculation in the reference parameter
//         }
//     public:
//         void run_threads() {
//             cout << "Main thread " << this_thread::get_id() << " started." << endl;
//
//             int result1, result2;
//             // Create two threads and start them running the print_number function with different arguments
//             thread t1(&Solution::print_number, this, 1, ref(result1));
//             thread t2(&Solution::print_number, this, 2, ref(result2));
//
//             // Wait for the threads to finish executing before continuing
//             t1.join();
//             t2.join();
//
//             cout << "Result 1: " << result1 << endl;
//             cout << "Result 2: " << result2 << endl;
//             cout << "Main thread " << this_thread::get_id() << " finished." << endl;
//         }
//     };
//
//     int main() {
//         Solution s;
//         s.run_threads();
//         return 0;
//     }
//
// // OUTPUT: Main thread 139675940214592 started.
// //         Thread 139675898066688 printing 1
// //         Thread 139675915851008 printing 2
// //         Thread 139675898066688 printing 1
// //         Thread 139675915851008 printing 2
// //         Thread 139675898066688 printing 1
// //         Thread 139675915851008 printing 2
// //         Thread 139675898066688 printing 1
// //         Thread 139675915851008 printing 2
// //         Thread 139675898066688 printing 1
// //         Thread 139675915851008 printing 2
// //         Result 1: 100
// //         Result 2: 200
// //         Main thread 139675940214592 finished.
//

//----< future >----------------------------//
using std::future;
using std::async;
// CPP_USAGE:
//     class Solution {
//     private:
//         void print_number(int num, int& result) {
//             for (int i = 0; i < 5; ++i) {
//                 cout << "Thread " << this_thread::get_id() << " printing " << num << endl;
//                 this_thread::sleep_for(chrono::milliseconds(500)); // sleep for 500ms
//             }
//             result = num * 100; // Store the result of the calculation in the reference parameter
//         }
//
//     public:
//         void run() {
//             cout << "Main thread " << this_thread::get_id() << " started." << endl;
//
//             future<void> f1 = async(&Solution::print_number, this, 1, ref(result1_));
//             future<void> f2 = async(&Solution::print_number, this, 2, ref(result2_));
//
//             f1.get();
//             f2.get();
//
//             cout << "Result 1: " << result1_ << endl;
//             cout << "Result 2: " << result2_ << endl;
//             cout << "Main thread " << this_thread::get_id() << " finished." << endl;
//         }
//
//     private:
//         int result1_, result2_;
//     };
//
//     int main() {
//         Solution sol;
//         sol.run();
//         return 0;
//     }
//
// // OUTPUT: Main thread [thread id] started.
// //         Thread [thread id] printing 1
// //         Thread [thread id] printing 2
// //         Thread [thread id] printing 1
// //         Thread [thread id] printing 2
// //         Thread [thread id] printing 1
// //         Thread [thread id] printing 2
// //         Thread [thread id] printing 1
// //         Thread [thread id] printing 2
// //         Thread [thread id] printing 1
// //         Thread [thread id] printing 2
// //         Result 1: 100
// //         Result 2: 200
// //         Main thread [thread id] finished.
//

//----< mutex >-----------------------------//
using std::mutex;                           // Basic mutex
using std::timed_mutex;                     // mutex with a timeout. CAN BE LOCKED & UNLOCKED
using std::recursive_mutex;                 // mutex can be locked recursively by the same thread. CAN BE LOCKED & UNLOCKED
using std::recursive_timed_mutex;           // mutex can be locked recursively by same thread and locking with a timeout. CAN BE LOCKED & UNLOCKED
using std::lock;                            // locks specified mutexes. CAN BE LOCKED & UNLOCKED
using std::lock_guard;                      // strictly scope-based mutex ownership wrapper. LOCK ON CONSTRUCTION & UNLOCK ON DESTRUCTION 
using std::scoped_lock;                     // deadlock-avoiding RAII wrapper. LOCK ON CONSTRUCTION & UNLOCK ON DESTRUCTION
using std::unique_lock;                     // movable mutex ownership wrapper. CAN BE LOCKED & UNLOCKED
// CPP_USAGE:
//     class Solution {
//     private:
//         mutex mtx; // create a mutex object
//
//         void printNumbers(int n, vector<int>& result) {
//             mtx.lock(); // acquire the mutex lock
//             for (int i = 1; i <= n; i++) {
//                 cout << i << " ";
//                 result.push_back(i);
//             }
//             cout << endl;
//             mtx.unlock(); // release the mutex lock
//         }
//
//     public:
//         void run_threads() {
//             const int numThreads = 4;
//             thread threads[numThreads];
//             vector<vector<int>> results(numThreads);
//
//             // start the threads
//             for (int i = 0; i < numThreads; i++) {
//                 threads[i] = thread(&Solution::printNumbers, this, 10, ref(results[i]));
//             }
//
//             // wait for the threads to finish
//             for (int i = 0; i < numThreads; i++) {
//                 threads[i].join();
//             }
//
//             // print out the results
//             for (int i = 0; i < numThreads; i++) {
//                 cout << "Result " << i << ": ";
//                 for (int j = 0; j < results[i].size(); j++) {
//                     cout << results[i][j] << " ";
//                 }
//                 cout << endl;
//             }
//         }
//     };
//
//     int main() {
//         Solution s;
//         s.run_threads();
//         return 0;
//     }
//
// // OUTPUT: 1 2 3 4 5 6 7 8 9 10 
// //         1 2 3 4 5 6 7 8 9 10 
// //         1 2 3 4 5 6 7 8 9 10 
// //         1 2 3 4 5 6 7 8 9 10 
// //         Result 0: 1 2 3 4 5 6 7 8 9 10 
// //         Result 1: 1 2 3 4 5 6 7 8 9 10 
// //         Result 2: 1 2 3 4 5 6 7 8 9 10 
// //         Result 3: 1 2 3 4 5 6 7 8 9 10 
//

//----< condition_variable >----------------//
using std::condition_variable;
// CPP_USAGE:
//     class Solution {
//     private:
//         mutex mtx; // create a mutex object
//         condition_variable cv; // create a condition variable object
//
//         bool dataReady = false;
//
//         void producer() {
//             this_thread::sleep_for(chrono::milliseconds(500));
//             cout << "Producer: preparing data..." << endl;
//             this_thread::sleep_for(chrono::milliseconds(500));
//             {
//                 lock_guard<mutex> lock(mtx);
//                 dataReady = true;
//             }
//             cv.notify_one();
//         }
//
//         void consumer() {
//             cout << "Consumer: waiting for data..." << endl;
//             {
//                 unique_lock<mutex> lock(mtx);
//                 cv.wait(lock, [this]{ return dataReady; });
//             }
//             cout << "Consumer: processing data..." << endl;
//         }
//
//     public:
//         void run_threads() {
//             thread t1(&Solution::producer, this);
//             thread t2(&Solution::consumer, this);
//
//             t1.join();
//             t2.join();
//         }
//     };
//
//     int main() {
//         Solution s;
//         s.run_threads();
//
//         return 0;
//     }
//
// // OUTPUT: Producer: preparing data...
// //         Consumer: waiting for data...
// //         Consumer: processing data...
//

//----< chrono >----------------------------//
using std::ratio;                           // Represents exact rational (e.g. ratio< 1, 3 >)

//----< chrono >----------------------------//
using std::chrono::duration;                // Combine with std::ratio to create duration
using std::chrono::system_clock;
using std::chrono::nanoseconds;             // Duration in nanoseconds
using std::chrono::microseconds;            // Duration in microseconds
using std::chrono::milliseconds;            // Duration in milliseconds
using std::chrono::seconds;                 // Duration in seconds
using std::chrono::minutes;                 // Duration in minutes
using std::chrono::hours;                   // Duration in hours

//------------------------------------------//



int main( int argc, char ** argv ) {


    return 0;
}

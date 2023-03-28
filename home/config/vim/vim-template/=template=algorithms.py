# //----< iostream >--------------------------//
# using std::cout;
# using std::cin;
# using std::endl;
# using std::ostream;
# using std::istream;
#
# //----< cstdio >----------------------------//
# using std::printf;
# using std::fprintf;
# using std::sprintf;
# using std::snprintf;
#
# //----< iomanip >---------------------------//
# using std::setprecision;
# using std::setw;
#
# //----< ios >-------------------------------//
# using std::hex;
# using std::dec;
# using std::oct;
# using std::fixed;
#
# //----< sstream >---------------------------//
# using std::stringstream;
# using std::ostringstream;
# using std::istringstream;
#
# //----< fstream >---------------------------//
# using std::ofstream;
# using std::ifstream;
#
# //----< string >----------------------------//
# using std::getline;
# using std::string;
# using std::to_string;
# using std::stoi;                            // PREFERRED stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
# using std::stol;                            // PREFERRED stol() over atol() since stoi() allows conversion from binary & hex strings to int.
# using std::stoll;                           // PREFERRED stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
#
# //----< cmath >-----------------------------//
# using std::sqrt;
# using std::pow;
# using std::log;                             // log( <arg> )
# using std::exp;                             // e ^ <arg>
# using std::abs;
# using std::fabs;
# using std::floor;                           // Round down to nearest integer double
# using std::ceil;                            // Round up to nearest integer double
# using std::trunc;                           // Truncate the fractional part to get the integer part
# using std::round;                           // Round to nearest integer double
#
# //----< cstdlib >---------------------------//
# using std::rand;
# using std::srand;
# using std::atoi;                            // DEPRECATED: Preferred stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
# using std::atol;                            // DEPRECATED: Preferred stol() over atol() since stoi() allows conversion from binary & hex strings to int.
# using std::atoll;                           // DEPRECATED: Preferred stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
#
# //----< ctime >-----------------------------//
# using std::time;
#
# //----< functional >------------------------//
# using std::hash;
# using std::greater;                         // lhs > rhs. Used for MinPQ
# using std::less;                            // lhs < rhs. Used for MaxPQ. Default for priority_queue<>
# using std::less_equal;
# using std::greater_equal;
# using std::bind;
# using namespace std::placeholders;          // placeholders ( _1, _2, ..., _N ) for std::bind


from typing import List
# //----< array >-----------------------------//
# using std::array;                           // Fixed & Unordered Array
# PYTHON_USAGE:
#     l : List[ int ] = []
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#
#
# //----< vector >----------------------------//
# using std::vector;
# PYTHON_USAGE:
#     l : List[ int ] = []
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#
#
# //----< list >------------------------------//
# using std::list;                            // Doubly-Linked List with size() ( O( 1 ) )
# PYTHON_USAGE:
#     l : List[ int ] = []
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#
#
# //----< forward_list >----------------------//
# using std::forward_list;                    // Singly-Linked List without size() function ( so O( N ) if we need to get size() )
# PYTHON_USAGE:
#     l : List[ int ] = []
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#

from typing import Dict                       # INIT: d = { key: val }
from collections import OrderedDict
from typing import OrderedDict
# //----< map >-------------------------------//
# using std::map;                             // Ordered Map (Red-Black Tree)
# PYTHON_USAGE:
#     d : Dict[ str, int ] = dict( zip( dic_keys, ( [] for _ in dic_keys ) ) ) )
#     ds : List[ Tuple[ str, int ] ] = sorted( dict( zip( dic_keys, ( [] for _ in dic_keys ) ) ).items() ) )
#     ds : List[ Tuple[ str, int ] ] = sorted( d.items() ) )
#     ds : Dict[ str, int ] = dict( sorted( d.items() ) )
#     ds : OrderedDict[ str, int ] = OrderedDict( sorted( d.items() ) )
#
#
# using std::multimap;                        // Ordered Map (Red-Black Tree) & Allow duplicated keys
# PYTHON_USAGE:
#     d : Dict[ str, List[ int ] ] = []
#     ds : List[ Tuple[ str, List[ int ] ] ] = sorted( d.items() )
#
#
# //----< unordered_map >---------------------//
# using std::unordered_map;                   // HashMap (SeparateChainingHashST)
# PYTHON_USAGE:
#     d : Dict[ str, int ] = { key: val }
#
#
# using std::unordered_multimap;              // Ordered Map (Red-Black Tree) & Allow duplicated keys
# PYTHON_USAGE:
#     d : Dict[ str, List[ int ] ] = { key: [ val1, val2 ] }
#

from typing import Set
# //----< set >-------------------------------//
# using std::set;                             // Ordered Set (Red-Black Tree)
# PYTHON_USAGE:
#     s : Set[ int ] = { 1, 2, 3, 4, 5 }
#     s : Set[ int ] = set( ( 1, 2, 3 ) ) -- set from Tuple
#     s : Set[ int ] = set( [ 1, 2, 3 ] ) -- set from List
#     s : Set[ str ] = set( "ABC" )       -- set from str
#     ss : List[ str ] = sorted( s )      -- sorted list results from sorting Set
#     ss : Dict[ str, bool ] = { key: True for key in sorted( s ) }
#     ss : OrderedDict[ str, bool ] = OrderedDict( { key: True for key in sorted( s ) } )
#
#
# using std::multiset;                        // Ordered Set (Red-Black Tree) & Allow duplicated keys
# PYTHON_USAGE:
#     d : Dict[ str, int ] = { key1: count1, key2: count2 }
#     ds : List[ Tuple[ str, int ] ] = sorted( d.items() )
#     ds : Dict[ str, int ] = dict( sorted( d.items() ) )
#     ds : OrderedDict[ str, int ] = OrderedDict( sorted( d.items() ) )
#
#
# //----< unordered_set >---------------------//
# using std::unordered_set;                   // HashSet (SeparateChainingHashST)
# PYTHON_USAGE:
#     s : Set[ int ] = set( ( 1, 2, 3 ) ) -- set from Tuple
#     s : Set[ int ] = set( [ 1, 2, 3 ] ) -- set from List
#     s : Set[ str ] = set( "ABC" )       -- set from str
#
#
# using std::unordered_multiset;              // HashSet (SeparateChainingHashST) & Allow duplicated keys
# PYTHON_USAGE:
#     d : Dict[ str, int ] = { key1: count1, key2: count2 }
#

from typing import Deque
from collections import deque
# //----< deque >-----------------------------//
# using std::deque;                           // Vector of fixed-size Vectors: 1 fixed-size vector for each end of the deque
# PYTHON_USAGE:
#     dq : Deque[ int ] = deque( [ 1, 2, 3 ] )
#     dq : Deque[ int ] = deque( ( 1, 2, 3 ) )
#     dq : Deque[ str ] = deque( "ABC" )
#

from queue import Queue
# //----< queue >-----------------------------//
# using std::queue;                           // Non-Iterable & Use std::deque as underlying data structure
# PYTHON_USAGE:
#     q : Queue[ int ] = Queue( maxsize = 3 )
#     q : Queue[ int ] = Queue()
#     q.put( 1 )
#     q.put( 2 )
#     q.put( 3 )
#     while not q.empty():
#         print( q.qsize() )
#         print( q.full() )    # check whether q.qsize() == q.maxsize
#         ele = q.get()
#

from queue import PriorityQueue
# using std::priority_queue;                  // MaxPQ (MaxHeap) & Non-Iterable.
# //                                          // => Pass std::greater<> as template params to create MinPQ (MinHeap)
# PYTHON_USAGE:
# MIN_HEAP:
#     pq : PriorityQueue[ str ] = PriorityQueue( maxsize = 3 )
#     pq : PriorityQueue[ str ] = PriorityQueue()
#     pq.put( ( 1, "val1" ) )  -- outputed 1st
#     pq.put( ( 2, "val4" ) )  -- outputed 3rd
#     pq.put( ( 2, "val2" ) )  -- outputed 2nd
#     while not pq.empty():
#         print( pq.qsize() )
#         print( pq.full() )    # check whether q.qsize() == q.maxsize
#         ele = pq.get()
#
# MAX_HEAP:
#     pq : PriorityQueue[ str ] = PriorityQueue( maxsize = 3 )
#     pq : PriorityQueue[ str ] = PriorityQueue()
#     pq.put( ( -1, "val1" ) )  -- outputed 3rd
#     pq.put( ( -2, "val4" ) )  -- outputed 2nd
#     pq.put( ( -2, "val2" ) )  -- outputed 1st
#
#     while not pq.empty():
#         print( pq.qsize() )
#         print( pq.full() )    # check whether q.qsize() == q.maxsize
#         ele = pq.get()
#

# //----< stack >-----------------------------//
# using std::stack;                           // Non-Iterable & Use std::deque as underlying data structure
# PYTHON_USAGE:
#     st : List[ int ] = []
#     st.append( 1 )
#     st.append( 2 )
#     while st:
#         print( st.pop() )
#

from typing import Tuple
# //----< tuple >-----------------------------//
# using std::tuple;                           // Non-Iterable & Use std::pair as underlying data structure
# using std::get;                             // Access & Set element in tuple using get< index >( tuple_var )
# PYTHON_USAGE:
#     t : Tuple[ str, int ] = ( "ABC", 1 )
#     t : Tuple[ int, ... ] = ( 1, 2, 3 )
#     t : Tuple[ int ] = ( 1 )
#     t : Tuple[ str, ... ] = ( "A", "B", "C" )
#     t : Tuple[ str ] = ( "A" )
#     t : Tuple[ str, int ] = tuple( [ "ABC", 1 ] )
#     if t[ 0 ] == "ABC":
#         print( t[ 1 ] )
#

# [ UNSUPPORTED_IN_PYTHON ]//----< bitset >----------------------------//
# [ UNSUPPORTED_IN_PYTHON ] using std::bitset;

from typing import Iterable
from typing import Iterator
# //----< iterator >--------------------------//
# using std::next;                            // Return an advanced iter without changing original iter
# PYTHON_USAGE:
#     iterable: Tuple[ int ] = tuple( [ 1, 2, 3, 4 ] )
#     it = iter( iterable )
#     for item in it:
#         print( item )
#


# [ UNSUPPORTED_IN_PYTHON ] using std::prev;                            // Return an decremented iter without changing original iter
# [ UNSUPPORTED_IN_PYTHON ] using std::distance;                        // Calculate distance between 2 iterators
# [ UNSUPPORTED_IN_PYTHON ] using std::inserter;                        // Insert element into first arg starting from position in second arg

# //----< utility >---------------------------//
# using std::pair;
# using std::make_pair;
# using std::move;                            // Move resources between objects - typically used with std::unique_ptr<T>
# PYTHON_USAGE:
#     t : Tuple[ str, int ] = ( "ABC", 1 )
#     t : Tuple[ int, ... ] = ( 1, 2, 3 )
#     t : Tuple[ int ] = ( 1 )
#     t : Tuple[ str, ... ] = ( "A", "B", "C" )
#     t : Tuple[ str ] = ( "A" )
#     t : Tuple[ str, int ] = tuple( [ "ABC", 1 ] )
#     if t[ 0 ] == "ABC":
#         print( t[ 1 ] )
#

# //----< algorithm >-------------------------//
# using std::fill;
# PYTHON_USAGE:
#     a : List[ int ] = [ 0 ] * 100
#     a[ 2:12 ] = [ 1 ] * 10
#     a[ 2:12 ] = [ 2 ] * 20
#     a[ 2:12 ] = [ 3 ] * 5
#

# using std::max;
# PYTHON_USAGE:
#     a : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     print( max( a ) )              -- output: 5 ( a[ 4 ] )
#     print( max( a[ 0 ], a[ 3 ] ) ) -- output: 4 ( a[ 3 ] )
#

# using std::min;
# PYTHON_USAGE:
#     a : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     print( min( a ) )              -- output: 1 ( a[ 0 ] )
#     print( min( a[ 0 ], a[ 3 ] ) ) -- output: 1 ( a[ 0 ] )
#

# using std::find;
# PYTHON_USAGE:
#     l : List[ int ] = [ 1, 2, 3, 3, 3, 3, 4, 5 ]
#     print( l.index( 3 ) )     -- output: 2
#     print( l.index( 3, 4 ) )  -- output: 4
#
#     t : Tuple[ int, ... ] = ( 1, 2, 3, 3, 3, 3, 4, 5 )
#     print( t.index( 3 ) )        -- output: 2
#     print( t.index( 3, 4 ) )     -- output: 4
#
#     s : str = "ABCCCCCD"
#     print( s.index( "C" ) )      -- output: 2
#     print( s.index( "C", 4 ) )   -- output: 4
#

# using std::reverse;
# PYTHON_USAGE:
# REVERSE_ALL:
#     a : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     a.reverse()
#     print( a )
#
#     a = list( reversed( a ) )
#     print( a )
#
#     t : Tuple[ int, ... ] = ( 1, 2, 3, 4, 5 )
#     t = tuple( reversed( t ) )
#     print( t )
#
#     s : str = "ABC"
#     s = "".join( reversed( s ) )
#     print( s )
#
#
# REVERSE_PARTIAL:
#     a : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     sa = a[ 1:4 ]
#     sa.reverse()
#     print( sa )
#
#     sa = a[ 1:4 ]
#     sa = list( reversed( sa ) )
#     print( sa )
#
#     t : Tuple[ int, ... ] = ( 1, 2, 3, 4, 5 )
#     st = t[ 1:4 ]
#     st = tuple( reversed( st ) )
#     print( st )
#
#     s : str = "ABCDEF"
#     ss = s[ 1:4 ]
#     ss = "".join( reversed( ss ) )
#     print( ss )
#

# using std::sort;                            // Intro-Sort (QuickSort => HeapSort when recursion depth exceeds certain level), NOT IN-PLACE & NOT STABLE
# PYTHON_USAGE:
#     a : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     a.sort( reverse = False, key = myFunc )         -- IN-PLACE & STABLE
#     print( a )
#
#     t : Tuple[ int, ... ] = ( 1, 2, 3, 4, 5 )
#     t = tuple( sorted( t, reverse = False ) )       -- NOT IN-PLACE & STABLE
#     print( t )
#
#     s : str = "ABC"
#     s = "".join( sorted( s, reverse = False ) )     -- NOT IN-PLACE & STABLE
#     print( s )
#

# using std::partial_sort;                    // HeapSort elements in range ( iterFirst, iterLast ) ( exclusively ). IN-PLACE & NOT STABLE
# PYTHON_USAGE:
#     a : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     a[ 1:4 ] = sorted( a[ 1:4 ], reverse = False )  -- NOT IN-PLACE & STABLE
#

# using std::stable_sort;                     // Merge-Sort elements. NOT IN-PLACE & STABLE

import heapq
# using std::sort_heap;                       // HeapSort elements. IN-PLACE & NOT STABLE
# 
#


# using std::remove;
# using std::swap;
# using std::binary_search;
# using std::next_permutation;
# using std::prev_permutation;
# using std::set_intersection;                // Only works on std::set and not std::unordered_set
# using std::set_difference;                  // Only works on std::set and not std::unordered_set
# using std::set_union;
# using std::lower_bound;                     // Returns iter pointing to first element >= value
# using std::upper_bound;                     // Returns iter pointing to first element > value
# using std::transform;                       // Apply the given function to a range and store result in another range
# using std::nth_element;
#
# //----< memory >----------------------------//
# using std::make_unique;
# using std::unique_ptr;
# using std::make_shared;
# using std::shared_ptr;
# using std::weak_ptr;
#
# //----< cctype >----------------------------//
# using std::isalnum;
# using std::isalpha;
# using std::islower;
# using std::isupper;
# using std::isdigit;
# using std::isspace;                         // Check whether char is whitespace character (space, newline, tab, etc. )
# using std::isblank;                         // Check whether char is blank character ( space or tab )
# using std::tolower;
# using std::toupper;
#
# //----< stdexcept >-------------------------//
# using std::runtime_error;
# using std::invalid_argument;
# using std::out_of_range;
#
# //----< limits >----------------------------//
# using std::numeric_limits;                  // ::lowest() & ::max() for smallest & biggest representable value, respectively
#                                             // ::infinity() only works for `double` / `float` / 'long double'. ::has_infinity() == false for ALL other types.
#
# //----< numeric >---------------------------//
# using std::iota;
# using std::gcd;
# using std::lcm;
# using std::partial_sum;                     // Calculate partial_sum of range beginIter, endIter and put result to 3rd argument outIter
#
# //----< thread >----------------------------//
# using std::thread;
# namespace this_thread = std::this_thread;   // Manipulate / Info of the current thread
# // using this_thread::get_id;                  // Get the current thread's id
# // using this_thread::yield;                   // Yield to other threads
# // using this_thread::sleep_until;             // Sleep until time point
# // using this_thread::sleep_for;               // Sleep for time span
#
# //----< mutex >-----------------------------//
# using std::mutex;                           // Basic mutex
# using std::timed_mutex;                     // mutex with a timeout. CAN BE LOCKED & UNLOCKED
# using std::recursive_mutex;                 // mutex can be locked recursively by the same thread. CAN BE LOCKED & UNLOCKED
# using std::recursive_timed_mutex;           // mutex can be locked recursively by same thread and locking with a timeout. CAN BE LOCKED & UNLOCKED
# using std::lock;                            // locks specified mutexes. CAN BE LOCKED & UNLOCKED
# using std::lock_guard;                      // strictly scope-based mutex ownership wrapper. LOCK ON CONSTRUCTION & UNLOCK ON DESTRUCTION 
# using std::scoped_lock;                     // deadlock-avoiding RAII wrapper. LOCK ON CONSTRUCTION & UNLOCK ON DESTRUCTION
# using std::unique_lock;                     // movable mutex ownership wrapper. CAN BE LOCKED & UNLOCKED
#
# //----< condition_variable >----------------//
# using std::condition_variable;
#
# //----< chrono >----------------------------//
# using std::ratio;                           // Represents exact rational (e.g. ratio< 1, 3 >)
#
# //----< chrono >----------------------------//
# using std::chrono::duration;                // Combine with std::ratio to create duration
# using std::chrono::system_clock;
# using std::chrono::nanoseconds;             // Duration in nanoseconds
# using std::chrono::microseconds;            // Duration in microseconds
# using std::chrono::milliseconds;            // Duration in milliseconds
# using std::chrono::seconds;                 // Duration in seconds
# using std::chrono::minutes;                 // Duration in minutes
# using std::chrono::hours;                   // Duration in hours
#
# //------------------------------------------//
#

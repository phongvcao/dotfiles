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
# PYTHON_USAGE:
#     print( hex( 5 ) )  -- output: '0x5'
#
#     print( bin( 5 ) )  -- output: '0b101'
#
#     print( oct( 5 ) )  -- output: '0o5'
#
#     print( str( 5 ) )  -- output: '5'
#

# using std::stoi;                            // PREFERRED stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
# PYTHON_TRICKS:
#     lc : List[ str ] = [ "" ] * 26
#     for i in range( 26 ):
#         lc[ i ] = chr( ord( "a" ) + i )
#     print( lc )
#
#     li : List[ int ] = [ 0 ] * 26
#     for c in lc:
#         li[ ord( c ) - ord( "a" ) ] += 1
#     print( li )
#
# PYTHON_USAGE:
#     print( int( "111111", 2 ) )
#     print( int( "ABCD", 16 ) )
#     print( int( "2000", 10 ) )
#     print( int( "177", 8 ) )
#
#     print( float( "177" ) )
#     print( float( "17.7" ) )
#
#
# using std::stol;                            // PREFERRED stol() over atol() since stoi() allows conversion from binary & hex strings to int.
# PYTHON_TRICKS:
#     lc : List[ str ] = [ "" ] * 26
#     for i in range( 26 ):
#         lc[ i ] = chr( ord( "a" ) + i )
#     print( lc )
#
#     li : List[ int ] = [ 0 ] * 26
#     for c in lc:
#         li[ ord( c ) - ord( "a" ) ] += 1
#     print( li )
#
# PYTHON_USAGE:
#     print( int( "111111", 2 ) )
#     print( int( "ABCD", 16 ) )
#     print( int( "2000", 10 ) )
#     print( int( "177", 8 ) )
#
#     print( float( "177" ) )
#     print( float( "17.7" ) )
#
#
# using std::stoll;                           // PREFERRED stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
# PYTHON_TRICKS:
#     lc : List[ str ] = [ "" ] * 26
#     for i in range( 26 ):
#         lc[ i ] = chr( ord( "a" ) + i )
#     print( lc )
#
#     li : List[ int ] = [ 0 ] * 26
#     for c in lc:
#         li[ ord( c ) - ord( "a" ) ] += 1
#     print( li )
#
# PYTHON_USAGE:
#     print( int( "111111", 2 ) )
#     print( int( "ABCD", 16 ) )
#     print( int( "2000", 10 ) )
#     print( int( "177", 8 ) )
#
#     print( float( "177" ) )
#     print( float( "17.7" ) )
#

from math import sqrt
# //----< cmath >-----------------------------//
# using std::sqrt;
# PYTHON_USAGE:
#     print( sqrt( 9 ) )  -- output: 3
#

# using std::pow;
# PYTHON_USAGE:
#     print( 7 ** 2 )
#     print( 7 ** 2 == 7 * 7 )  -- True
#     print( 2 ** -1 )  -- output: 0.5
#     print( 2.0 ** 0.5 )  -- output: 1.4142135623730951
#

# using std::div;
# using std::ldiv;
# using std::lldiv;
# PYTHON_USAGE:
#     print( divmod( 8, 3 ) )  -- output: (2, 2)
#     print( divmod( 8, 3 )[ 0 ] )  -- output: 2
#     print( divmod( 8, 3 )[ 1 ] )  -- output: 2
#
#     print( divmod( 2.6, 0.5 ) )  -- output: (5.0, 0.10000000000000009)
#     print( divmod( 2.6, 0.5 )[ 0 ] )  -- output: 5.0
#     print( divmod( 2.6, 0.5 )[ 1 ] )  -- output: 0.10000000000000009
#

from math import log
# using std::log;                             // log( <arg> )
# PYTHON_USAGE:
#     print( log( 7 ) )  -- log( 7, 'e' )
#     print( log( 7, 2 ) )
#     print( log( 7, 2 ) == log( 7 ) / log( 2 ) )  -- True
#     print( log( 7, 10 ) )
#     print( log( 7, 10 ) == log( 7 ) / log( 10 ) )  -- True
#

# using std::exp;                             // e ^ <arg>

# using std::abs;
# using std::fabs;
# PYTHON_USAGE:
#     print( abs( 6 ) )
#     print( abs( 6.0 ) )
#     print( abs( -6 ) )
#     print( abs( -6.0 ) )
#

# using std::floor;                           // Round down to nearest integer double
# using std::ceil;                            // Round up to nearest integer double
# using std::trunc;                           // Truncate the fractional part to get the integer part
# using std::round;                           // Round to nearest integer double
#
# //----< cstdlib >---------------------------//
# using std::rand;
# using std::srand;
# using std::atoi;                            // DEPRECATED: Preferred stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
# PYTHON_TRICKS:
#     lc : List[ str ] = [ "" ] * 26
#     for i in range( 26 ):
#         lc[ i ] = chr( ord( "a" ) + i )
#     print( lc )
#
#     li : List[ int ] = [ 0 ] * 26
#     for c in lc:
#         li[ ord( c ) - ord( "a" ) ] += 1
#     print( li )
#
# PYTHON_USAGE:
#     print( int( "111111", 2 ) )
#     print( int( "ABCD", 16 ) )
#     print( int( "2000", 10 ) )
#     print( int( "177", 8 ) )
#
#     print( float( "177" ) )
#     print( float( "17.7" ) )
#
#
# using std::atol;                            // DEPRECATED: Preferred stol() over atol() since stoi() allows conversion from binary & hex strings to int.
# PYTHON_TRICKS:
#     lc : List[ str ] = [ "" ] * 26
#     for i in range( 26 ):
#         lc[ i ] = chr( ord( "a" ) + i )
#     print( lc )
#
#     li : List[ int ] = [ 0 ] * 26
#     for c in lc:
#         li[ ord( c ) - ord( "a" ) ] += 1
#     print( li )
#
# PYTHON_USAGE:
#     print( int( "111111", 2 ) )
#     print( int( "ABCD", 16 ) )
#     print( int( "2000", 10 ) )
#     print( int( "177", 8 ) )
#
#     print( float( "177" ) )
#     print( float( "17.7" ) )
#
#
# using std::atoll;                           // DEPRECATED: Preferred stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
# PYTHON_TRICKS:
#     lc : List[ str ] = [ "" ] * 26
#     for i in range( 26 ):
#         lc[ i ] = chr( ord( "a" ) + i )
#     print( lc )
#
#     li : List[ int ] = [ 0 ] * 26
#     for c in lc:
#         li[ ord( c ) - ord( "a" ) ] += 1
#     print( li )
#
# PYTHON_USAGE:
#     print( int( "111111", 2 ) )
#     print( int( "ABCD", 16 ) )
#     print( int( "2000", 10 ) )
#     print( int( "177", 8 ) )
#
#     print( float( "177" ) )
#     print( float( "17.7" ) )
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
#     l : List[ int ] = [ 0 ] * 100
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#
#     l : List[ List[ int ] ] = [ [ 0 ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
#     l : List[ List[ str ] ] = [ [ "A" ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
#
#
# //----< vector >----------------------------//
# using std::vector;
# PYTHON_USAGE:
#     l : List[ int ] = []
#     l : List[ int ] = [ 0 ] * 100
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#
#     l : List[ List[ int ] ] = [ [ 0 ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
#     l : List[ List[ str ] ] = [ [ "A" ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
#
#
# //----< list >------------------------------//
# using std::list;                            // Doubly-Linked List with size() ( O( 1 ) )
# PYTHON_USAGE:
#     l : List[ int ] = []
#     l : List[ int ] = [ 0 ] * 100
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#
#     l : List[ List[ int ] ] = [ [ 0 ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
#     l : List[ List[ str ] ] = [ [ "A" ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
#
#
# //----< forward_list >----------------------//
# using std::forward_list;                    // Singly-Linked List without size() function ( so O( N ) if we need to get size() )
# PYTHON_USAGE:
#     l : List[ int ] = []
#     l : List[ int ] = [ 0 ] * 100
#     l : List[ int ] = [ 1, 2, 3 ]           -- list from List literal
#     l : List[ int ] = list( ( 1, 2, 3 ) )   -- list from Tuple
#     l : List[ str ] = list( "ABC" )         -- list from str
#
#     l : List[ List[ int ] ] = [ [ 0 ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
#     l : List[ List[ str ] ] = [ [ "A" ] * 2 for i in range( 2 ) ]  -- 2 x 2 List of Lists
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
#     od : OrderedDict[ str, int ] = OrderedDict( sorted( d.items() ) )
#
#    val1 = d.get( key1 )
#    if val1 is not None:
#        print( val1 )
#
#    if key1 in d:
#        print( d[ key1 ] )
#
#    val1 = od.get( key1 )
#    if val1 is not None:
#        print( val1 )
#
#    if key1 in od:
#        print( od[ key1 ] )
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
#     s.add( 5 )
#     s.add( 4 )
#     s.discard( 1 )
#     s.discard( 4 )
#     try:
#         s.remove( 6 )
#     except KeyError:
#         print( "6 is not present in set" )
#
#
# using std::multiset;                        // Ordered Set (Red-Black Tree) & Allow duplicated keys
# PYTHON_USAGE:
#     d : Dict[ str, int ] = { key1: count1, key2: count2 }
#     ds : List[ Tuple[ str, int ] ] = sorted( d.items() )
#     ds : Dict[ str, int ] = dict( sorted( d.items() ) )
#     ds : OrderedDict[ str, int ] = OrderedDict( sorted( d.items() ) )
#
#     s.add( 5 )
#     s.add( 4 )
#     s.discard( 1 )
#     s.discard( 4 )
#     try:
#         s.remove( 6 )
#     except KeyError:
#         print( "6 is not present in set" )
#
#
# //----< unordered_set >---------------------//
# using std::unordered_set;                   // HashSet (SeparateChainingHashST)
# PYTHON_USAGE:
#     s : Set[ int ] = set( ( 1, 2, 3 ) ) -- set from Tuple
#     s : Set[ int ] = set( [ 1, 2, 3 ] ) -- set from List
#     s : Set[ str ] = set( "ABC" )       -- set from str
#
#     s.add( 5 )
#     s.add( 4 )
#     s.discard( 1 )
#     s.discard( 4 )
#     try:
#         s.remove( 6 )
#     except KeyError:
#         print( "6 is not present in set" )
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
#     dq.append( "D" )
#     dq.appendleft( "B" )
#
#     print( dq.pop() )
#     print( dq.popleft() )
#
#     print( dq.index( "A", 0, 3 ) )
#     dq.remove( "A" )
#     print( dq.count( "A" ) )
#
#     del dq[ 1 ]
#     print( dq )
#

# //----< queue >-----------------------------//
# using std::queue;                           // Non-Iterable & Use std::deque as underlying data structure
# PYTHON_USAGE:
#     dq : Deque[ int ] = deque( [ 1, 2, 3 ] )
#     dq : Deque[ int ] = deque( ( 1, 2, 3 ) )
#     dq : Deque[ str ] = deque( "ABC" )
#
#     dq.append( "D" )
#     dq.appendleft( "B" )
#
#     print( dq.pop() )
#     print( dq.popleft() )
#
#     print( dq.index( "A", 0, 3 ) )
#     dq.remove( "A" )
#     print( dq.count( "A" ) )
#
#     del dq[ 1 ]
#     print( dq )
#
#
from queue import Queue
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

import heapq
from queue import PriorityQueue
# using std::priority_queue;                  // MaxPQ (MaxHeap) & Non-Iterable.
# //                                          // => Pass std::greater<> as template params to create MinPQ (MinHeap)
# PYTHON_USAGE:
# MIN_HEAP:
#     class Value:
#         OPTIONAL_STATIC_VARIABLE_1 = ""
#         OPTIONAL_STATIC_VARIABLE_2 = ""
#
#         def __init__( self, val ):
#             self.val = val
#
#         def __lt__( self, other ):
#             return self.val < other.val
#
#     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
#     heapq.heapify( l )
#     print( l )
#
#     heapq.heappush( l, "G" )
#     heapq.heappush( l, "G" )
#
#     print( heapq.heappop( l ) )
#
#     print( heapq.heappushpop( l, "A" ) )  -- output "A"
#
#     print( heapq.heapreplace( l, "A" ) )  -- output "B"
#
# MAX_HEAP:
#     class Value:
#         OPTIONAL_STATIC_VARIABLE_1 = ""
#         OPTIONAL_STATIC_VARIABLE_2 = ""
#
#         def __init__( self, val ):
#             self.val = val
#
#         def __lt__( self, other ):
#             return self.val > other.val
#
#     li : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     ls : List[ str ] = [ "B", "C", 'D', "E", "E", "E", "F" ]
#     l : List[ Value ] = [ Value( val ) for val in ls ]
#     heapq.heapify( l )
#     for item in l:
#         print( item.val )
#
#     heapq.heappush( l, "B" )
#     heapq.heappush( l, "B" )
#
#     print( heapq.heappop( l ) )
#
#     print( heapq.heappushpop( l, "G" ) )  -- output "G"
#     print( heapq.heapreplace( l, "H" ) )  -- output "G"
#
#
# PYTHON_EXTRAS:
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
#

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
#     s : str = "ABCD"
#     print( max( s ) )  -- output: "D" ( s[ 3 ] )
#

# using std::min;
# PYTHON_USAGE:
#     a : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     print( min( a ) )              -- output: 1 ( a[ 0 ] )
#     print( min( a[ 0 ], a[ 3 ] ) ) -- output: 1 ( a[ 0 ] )
#
#     s : str = "ABCD"
#     print( min( s ) )  -- output: "A" ( s[ 0 ] )
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

# using std::reduce;                          // Add / Concatenate together all elements of iterator range
# using std::accumulate;                      // Add / Concatenate together all elements of iterator range
# PYTHON_USAGE:
#     l : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     print( sum( l ) )  -- output: 15
#
#     l : List[ str ] = [ "A", "B", "C" ]
#     print( "".join( l ) )  -- output: "ABC"
#


# using std::sort;                            // Intro-Sort (QuickSort => HeapSort when recursion depth exceeds certain level), NOT IN-PLACE & NOT STABLE
# PYTHON_USAGE:
#     a : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     a.sort( reverse = False, key = myFunc )         -- IN-PLACE & STABLE
#     a.sort( reverse = False, key = lambda x: x )         -- IN-PLACE & STABLE
#     print( a )
#
#     a : List[ List[ int ] ] = [ [ 1, 3 ], [ 3, 5 ], [ 3, 3 ], [ 5, 3 ], [ 2, 2 ] ]
#     a.sort( reverse = False )  -- output: [ [ 1, 3 ], [ 2, 2 ], [ 3, 3 ], [ 3, 5 ], [ 5, 3 ] ]
#     a.sort( reverse = True )  -- output: [ [ 5, 3], [ 3, 5 ], [ 3, 3 ], [ 2, 2 ], [ 1, 3 ] ]
#
#     t : Tuple[ int, ... ] = ( 1, 2, 3, 4, 5 )
#     t = tuple( sorted( t, reverse = False ) )       -- NOT IN-PLACE & STABLE
#     t = tuple( sorted( t, key = myFunc, reverse = False ) )       -- NOT IN-PLACE & STABLE
#     t = tuple( sorted( t, key = lambda x: x, reverse = False ) )       -- NOT IN-PLACE & STABLE
#     print( t )
#
#     s : str = "ABC"
#     s = "".join( sorted( s, reverse = False ) )     -- NOT IN-PLACE & STABLE
#     s = "".join( sorted( t, key = myFunc, reverse = False ) )       -- NOT IN-PLACE & STABLE
#     s = "".join( sorted( t, key = lambda x: x, reverse = False ) )       -- NOT IN-PLACE & STABLE
#     print( s )
#

# using std::partial_sort;                    // HeapSort elements in range ( iterFirst, iterLast ) ( exclusively ). IN-PLACE & NOT STABLE
# PYTHON_USAGE:
#     a : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     a[ 1:4 ] = sorted( a[ 1:4 ], reverse = False )  -- NOT IN-PLACE & STABLE
#     a[ 1:4 ] = sorted( a[ 1:4 ], key = myFunc, reverse = False )  -- NOT IN-PLACE & STABLE
#     a[ 1:4 ] = sorted( a[ 1:4 ], key = lambda x: x, reverse = False )  -- NOT IN-PLACE & STABLE
#

# using std::stable_sort;                     // Merge-Sort elements. NOT IN-PLACE & STABLE

# using std::sort_heap;                       // HeapSort elements. IN-PLACE & NOT STABLE
# PYTHON_USAGE:
# MIN_HEAP:
#     class Value:
#         OPTIONAL_STATIC_VARIABLE_1 = ""
#         OPTIONAL_STATIC_VARIABLE_2 = ""
#
#         def __init__( self, val ):
#             self.val = val
#
#         def __lt__( self, other ):
#             return self.val < other.val
#
#     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
#     heapq.heapify( l )
#     print( l )
#
#     heapq.heappush( l, "G" )
#     heapq.heappush( l, "G" )
#
#     print( heapq.heappop( l ) )
#
#     print( heapq.heappushpop( l, "A" ) )  -- output "A"
#
#     print( heapq.heapreplace( l, "A" ) )  -- output "B"
#
# MAX_HEAP:
#     class Value:
#         OPTIONAL_STATIC_VARIABLE_1 = ""
#         OPTIONAL_STATIC_VARIABLE_2 = ""
#
#         def __init__( self, val ):
#             self.val = val
#
#         def __lt__( self, other ):
#             return self.val > other.val
#
#     li : List[ int ] = [ 1, 2, 3, 4, 5 ]
#     ls : List[ str ] = [ "B", "C", 'D', "E", "E", "E", "F" ]
#     l : List[ Value ] = [ Value( val ) for val in ls ]
#     heapq.heapify( l )
#     for item in l:
#         print( item.val )
#
#     heapq.heappush( l, "B" )
#     heapq.heappush( l, "B" )
#
#     print( heapq.heappop( l ) )
#
#     print( heapq.heappushpop( l, "G" ) )  -- output "G"
#     print( heapq.heapreplace( l, "H" ) )  -- output "G"
#

# using std::remove;
# PYTHON_USAGE:
#     l : List[ int ] = [ 1, 2, 3, 4, 5, 6 ]
#     l : List[ str ] = [ "A", "B", "C", "D", "E", "F" ]
#
#     l = l[ :1 ] + l[ 4: ]
#     del l[ 1:4 ]
#
#     d : Dict[ str, int ] = { key1: val1, key2: val2, key3: val3 }
#     del d[ key1 ]
#     del d[ key2 ]
#

# using std::swap;
# PYTHON_USAGE:
#     l : List[ int ] = [ 1, 2, 3, 4, 5, 6, 7 ]
#     l : List[ str ] = [ "A", "B", "C", "D", "E", "F", "G" ]
#
#     l[ 1 ], l[ 3 ] = l[ 3 ], l[ 1 ]
#     l[ 1:3 ], l[ 4:6 ] = l[ 4:6 ], l[ 1:3 ]
#
#     d : Dict[ str, int ] = { key1: val1, key2: val2, key3: val3 }
#     d[ key1 ], d[ key2 ] = d[ key2 ], d[ key1 ]
#

from bisect import bisect
from bisect import bisect_left
from bisect import bisect_right
from bisect import insort
from bisect import insort_left
from bisect import insort_right
# using std::binary_search;
# PYTHON_USAGE:
#     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
#
#     l.sort()
#     print( bisect( l, "E", 0, -1 ) )  -- output: 5
#     print( bisect_left( l, "E", 0, -1 ) )  -- output: 3
#     print( bisect_right( l, "E", 0, -1 ) )  -- output: 5
#
#     l.sort()
#     insort( l, "E", 0, -1 )  -- insert at the right-most index
#     print( l )
#
#     insort_left( l, "E", 0, -1 )  -- insert at the left-most index
#     print( l )
#
#     print( insort_right( l, "E", 0, -1 ) )  -- insert at the right-most index
#     print( l )
#

from itertools import permutations
# using std::next_permutation;
# using std::prev_permutation;
# PYTHON_USAGE:
#     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
#     for p in permutations( l ):
#         print( list( p ) )
#
#     t : Tuple[ int, ... ] = ( 1, 2, 3, 3, 3, 3, 4, 5 )
#     for p in permutations( t ):
#         print( tuple( p ) )
#
#     d : Dict[ str, int ] = { key1: val1, key2: val2, key3: val3 }
#     for p in permutations( d ):
#         print( dict( p ) )
#
#     s : 
#     for p in permutations( d ):
#         print( "".join( p ) )
#

# using std::set_intersection;                // Only works on std::set and not std::unordered_set
# PYTHON_USAGE:
#     s1 : Set[ int ] = { 1, 2, 3, 4, 5, 6 }
#     s2 : Set[ int ] = { 4, 5, 6, 7, 8, 9 }
#     print( s1.intersection( s2 ) )
#

# using std::set_difference;                  // Only works on std::set and not std::unordered_set
# PYTHON_USAGE:
#     s1 : Set[ int ] = { 1, 2, 3, 4, 5, 6 }
#     s2 : Set[ int ] = { 4, 5, 6, 7, 8, 9 }
#     print( s1.difference( s2 ) )
#

# using std::set_union;
# PYTHON_USAGE:
#     s1 : Set[ int ] = { 1, 2, 3, 4, 5, 6 }
#     s2 : Set[ int ] = { 4, 5, 6, 7, 8, 9 }
#     print( s1.union( s2 ) )
#

# using std::lower_bound;                     // Returns iter pointing to first element >= value
# PYTHON_USAGE:
#     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
#
#     l.sort()
#     print( bisect_left( l, "E", 0, -1 ) )  -- output: 3
#

# using std::upper_bound;                     // Returns iter pointing to first element > value
# PYTHON_USAGE:
#     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
#     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
#
#     l.sort()
#     print( bisect( l, "E", 0, -1 ) )  -- output: 5
#     print( bisect_right( l, "E", 0, -1 ) )  -- output: 5
#

# using std::transform;                       // Apply the given function to a range and store result in another range
# PYTHON_USAGE:
#     l : 

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
# PYTHON_USAGE:
#     s = '1'
#     print( s.isalnum() )  -- output: True
#     s = '!!!'
#     print( s.isalnum() )  -- output: False
#     s = ' aA11Aa!! '
#     print( s.isalnum() )  -- output: False
#     s = 'a'
#     print( s.isalnum() )  -- output: True
#     s = 'abcde'
#     print( s.isalnum() )  -- output: True
#     s = 'A'
#     print( s.isalnum() )  -- output: True
#     s = 'ABCDE'
#     print( s.isalnum() )  -- output: True
#     s = 'aBCdE'
#     print( s.isalnum() )  -- output: True
#     s = 'a12A'
#     print( s.isalnum() )  -- output: True
#

# using std::isalpha;
# PYTHON_USAGE:
#     s = '1'
#     print( s.isalpha() )  -- output: False
#     s = '!!!'
#     print( s.isalpha() )  -- output: False
#     s = ' a11a!! '
#     print( s.isalpha() )  -- output: False
#     s = ' aA11Aa!! '
#     print( s.isalpha() )  -- output: False
#     s = 'a'
#     print( s.isalpha() )  -- output: True
#     s = 'abcde'
#     print( s.isalpha() )  -- output: True
#     s = 'A'
#     print( s.isalpha() )  -- output: True
#     s = 'ABCDE'
#     print( s.isalpha() )  -- output: True
#     s = 'aBCdE'
#     print( s.isalpha() )  -- output: True
#

# using std::islower;
# PYTHON_USAGE:
#     s = '1'
#     print( s.islower() )  -- output: False
#     s = '!!!'
#     print( s.islower() )  -- output: False
#     s = ' a11a!! '
#     print( s.islower() )  -- output: True
#     s = ' aA11Aa!! '
#     print( s.islower() )  -- output: False
#     s = 'a'
#     print( s.islower() )  -- output: True
#     s = 'abcde'
#     print( s.islower() )  -- output: True
#

# using std::isupper;
# PYTHON_USAGE:
#     s = '1'
#     print( s.isupper() )  -- output: False
#     s = '!!!'
#     print( s.isupper() )  -- output: False
#     s = ' A11A!! '
#     print( s.isupper() )  -- output: True
#     s = ' aA11Aa!! '
#     print( s.isupper() )  -- output: False
#     s = 'A'
#     print( s.isupper() )  -- output: True
#     s = 'ABCDE'
#     print( s.isupper() )  -- output: True
#

# using std::isdigit;
# PYTHON_USAGE:
#     s = '1'
#     print( s.isdecimal() )  -- output: True
#     s = '1234'
#     print( s.isdecimal() )  -- output: True
#     s = 'a'
#     print( s.isdecimal() )  -- output: False
#     s = '  1  '
#     print( s.isdecimal() )  -- output: False
#     s = 'a12'
#     print( s.isdecimal() )  -- output: False
#     s = 'z12'
#     print( s.isdecimal() )  -- output: False
#
#     s = '1'
#     print( s.isdigit() )  -- output: True
#     s = '1234'
#     print( s.isdigit() )  -- output: True
#     s = 'a'
#     print( s.isdigit() )  -- output: False
#     s = '  1  '
#     print( s.isdigit() )  -- output: False
#     s = 'a12'
#     print( s.isdigit() )  -- output: False
#     s = 'z12'
#     print( s.isdigit() )  -- output: False
#
#     s = '1'
#     print( s.isnumeric() )  -- output: True
#     s = '1234'
#     print( s.isnumeric() )  -- output: True
#     s = 'a'
#     print( s.isnumeric() )  -- output: False
#     s = '  1  '
#     print( s.isnumeric() )  -- output: False
#     s = 'a12'
#     print( s.isnumeric() )  -- output: False
#     s = 'z12'
#     print( s.isnumeric() )  -- output: False
#

# using std::isspace;                         // Check whether char is whitespace character (space, newline, tab, etc. )
# using std::isblank;                         // Check whether char is blank character ( space or tab )
# PYTHON_USAGE:
#     c = 'a'
#     print( c.isspace() )  -- output: False
#     c = ' '
#     print( c.isspace() )  -- output: True
#     c = ' abcd '
#     print( c.isspace() )  -- output: False
#

# using std::tolower;
# PYTHON_USAGE:
#     c = 'A'
#     print( c.lower() )  -- output: 'a'
#     c = 'ABCDE'
#     print( c.lower() )  -- output: 'abcde'
#

# using std::toupper;
# PYTHON_USAGE:
#     c = 'a'
#     print( c.upper() )  -- output: 'A'
#     c = 'abcde'
#     print( c.upper() )  -- output: 'ABCDE'
#

# //----< stdexcept >-------------------------//
# using std::runtime_error;
# using std::invalid_argument;
# using std::out_of_range;
#
# //----< limits >----------------------------//
# using std::numeric_limits;                  // ::lowest() & ::max() for smallest & biggest representable value, respectively
#                                             // ::infinity() only works for `double` / `float` / 'long double'. ::has_infinity() == false for ALL other types.
# PYTHON_USAGE:
#     print( - sys.maxsize - 1 )
#     print( sys.maxsize )
#     print( float( '-inf' ) )
#     print( float( 'inf' ) )
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

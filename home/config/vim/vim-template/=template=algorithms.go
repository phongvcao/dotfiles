package main

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
// //----< string >----------------------------//
// using std::getline;
// using std::string;

import "fmt"
import "strconv"
// using std::to_string;
// GO_USAGE:
//     fmt.Printf( strconv.FormatInt( 15, 16 ) )  -- output: 'f'
//
//     fmt.Printf( strconv.FormatInt( 15, 2 ) )  -- output: '1111'
//
//     fmt.Printf( strconv.FormatInt( 15, 8 ) )  -- output: '17'
//
//     fmt.Printf( strconv.Itoa( 17 ) )  -- output: '17'
//
//     fmt.Printf( fmt.Sprintf( "%d", 15 ) )  -- output: '15'
//
//
// using std::stoi;                            // PREFERRED stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
// using std::stol;                            // PREFERRED stol() over atol() since stoi() allows conversion from binary & hex strings to int.
// using std::stoll;                           // PREFERRED stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
// using std::atoi;                            // DEPRECATED: Preferred stoi() over atoi() since stoi() allows conversion from binary & hex strings to int.
// using std::atol;                            // DEPRECATED: Preferred stol() over atol() since stoi() allows conversion from binary & hex strings to int.
// using std::atoll;                           // DEPRECATED: Preferred stoll() over atoll() since stoi() allows conversion from binary & hex strings to int.
// GO_USAGE:
//     fmt.Println( strconv.Atoi( "123" ) )  -- output: 123
//     fmt.Println( strconv.Atoi( "-123" ) )  -- output: -123
//
//     i, err := strconv.ParseInt( "123", 10, 64 )
//     fmt.Println( i )  -- output: 123
//
//     i, err := strconv.ParseInt( "-123", 10, 64 )
//     fmt.Println( i )  -- output: -123
//
//     i, err := strconv.ParseInt( "111", 2, 64 )
//     fmt.Println( i )  -- output: 7
//
//     i, err := strconv.ParseInt( "ABC", 16, 64 )
//     fmt.Println( i )  -- output: 2748
//
// GO_TRICKS:
// GO_TRICKS_UNICODE:
//     var s string = "ABCDE"
//     var lc []rune = []rune( s )
//     var lc []rune = make( []rune, 26, 26 )
//     lc := make( []rune, 26, 26 )
//
//     for i := 0; i < 26; i++ {
//         lc[ i ] = rune( int( 'a' ) + i )
//     }
//     for i := 0; i < 26; i++ {
//         fmt.Printf( "%c\n", lc[ i ] )
//     }
//
//     var li []int = make( []int, 26, 26 )
//     li := make( []int, 26, 26 )
//
//     for _, c := range lc {
//         li[ int( c ) - int( 'a' ) ] += 1
//     }
//     fmt.Println( li )
//
// GO_TRICKS_ASCII:
//     var s string = "ABCDE"
//     var lc []byte = []byte( s )
//     var lc []byte = make( []byte, 26, 26 )
//     lc := make( []byte, 26, 26 )
//
//     for i := 0; i < 26; i++ {
//         lc[ i ] = byte( int( 'a' ) + i )
//     }
//     for i := 0; i < 26; i++ {
//         fmt.Printf( "%c\n", lc[ i ] )
//     }
//
//     var li []int = make( []int, 26, 26 )
//     li := make( []int, 26, 26 )
//
//     for _, c := range lc {
//         li[ int( c ) - int( 'a' ) ] += 1
//     }
//     fmt.Println( li )
//

import "math"
// //----< cmath >-----------------------------//
// using std::sqrt;
// GO_USAGE:
//     fmt.Println( math.Sqrt( 9 ) )  -- output: 3
//

// using std::pow;
// GO_USAGE:
//     fmt.Println( math.Pow( 7, 2 ) )
//     fmt.Println( math.Pow( 7, 2 ) == 7 * 7 )  -- True
//     fmt.Println( math.Pow( 2, -1 ) )  -- output: 0.5
//     fmt.Println( math.Pow( 2.0, 0.5 ) )  -- output: 1.4142135623730951
//
//     fmt.Println( math.Pow10( 2 ) )  -- output: 100
//     fmt.Println( math.Pow10( 5 ) == 100000 )  -- True
//

import "math/bits"
// using std::div;
// using std::ldiv;
// using std::lldiv;
// GO_USAGE:
//     quo, rem := bits.Div( 0, 7, 3 )
//     fmt.Printf( "quo: %d ; rem: %d\n", quo, rem )  -- output: 2, 1
//
//     quo, rem := bits.Div32( 0, 7, 3 )
//     fmt.Printf( "quo: %d ; rem: %d\n", quo, rem )  -- output: 2, 1
//
//     quo, rem := bits.Div64( 0, 7, 3 )
//     fmt.Printf( "quo: %d ; rem: %d\n", quo, rem )  -- output: 2, 1
//

// using std::log;                             // log( <arg> )
// GO_USAGE:
//     fmt.Println( math.Log( 10 ) )
//     fmt.Println( math.Log2( 10 ) )
//     fmt.Println( math.Log10( 10 ) )
//
//
// using std::exp;                             // e ^ <arg>
//
// using std::abs;
// using std::fabs;
// GO_USAGE:
//     print( math.Abs( 6 ) )
//     print( math.Abs( 6.0 ) )
//     print( math.Abs( -6 ) )
//     print( math.Abs( -6.0 ) )
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
// GO_USAGE:
//     l := []int{}
//     l := []int{ 1, 1, 1, 1, 1 }
//     l := make( []int )
//     l := make( []int, 0, 5 )
//
//     l := make( []int, 10, 10 )
//     for i := 0; i < 10; i++ {
//         l[ i ] = i
//     }
//     fmt.Println( l )
//
//
// //----< vector >----------------------------//
// using std::vector;
// GO_USAGE:
//     l := []int{}
//     l := []int{ 1, 1, 1, 1, 1 }
//     l := make( []int )
//     l := make( []int, 0, 5 )
//
//     l := make( []int, 10, 10 )
//     for i := 0; i < 10; i++ {
//         l[ i ] = i
//     }
//     fmt.Println( l )
//

import "container/list"
// //----< list >------------------------------//
// using std::list;                            // Doubly-Linked List with size() ( O( 1 ) )
// //----< forward_list >----------------------//
// using std::forward_list;                    // Singly-Linked List without size() function ( so O( N ) if we need to get size() )
// GO_USAGE:
//     l := list.New()
//     l.PushBack( "A" )
//     l.PushFront( "B" )
//     l.PushBack( "C" )
//     l.PushFront( "D" )
//     for node := l.Front(); node != nil; node = node.Next() {
//         fmt.Println( node.Value )
//     }
//     fmt.Println( l.Remove( l.Back() ) )  -- output: "C"
//     fmt.Println( l.Remove( l.Front() ) )  -- output: "D"
//

// //----< map >-------------------------------//
// using std::map;                             // Ordered Map (Red-Black Tree)
// PYTHON_USAGE:
//     d : Dict[ str, int ] = dict( zip( dic_keys, ( [] for _ in dic_keys ) ) ) )
//     ds : List[ Tuple[ str, int ] ] = sorted( dict( zip( dic_keys, ( [] for _ in dic_keys ) ) ).items() ) )
//     ds : List[ Tuple[ str, int ] ] = sorted( d.items() ) )
//     ds : Dict[ str, int ] = dict( sorted( d.items() ) )
//     od : OrderedDict[ str, int ] = OrderedDict( sorted( d.items() ) )
//
//    val1 = d.get( key1 )
//    if val1 is not None:
//        print( val1 )
//
//    if key1 in d:
//        print( d[ key1 ] )
//
//    val1 = od.get( key1 )
//    if val1 is not None:
//        print( val1 )
//
//    if key1 in od:
//        print( od[ key1 ] )
//
//
// using std::multimap;                        // Ordered Map (Red-Black Tree) & Allow duplicated keys
// PYTHON_USAGE:
//     d : Dict[ str, List[ int ] ] = []
//     ds : List[ Tuple[ str, List[ int ] ] ] = sorted( d.items() )
//
//
// //----< unordered_map >---------------------//
// using std::unordered_map;                   // HashMap (SeparateChainingHashST)
// PYTHON_USAGE:
//     d : Dict[ str, int ] = { key: val }
//
//
// using std::unordered_multimap;              // Ordered Map (Red-Black Tree) & Allow duplicated keys
// PYTHON_USAGE:
//     d : Dict[ str, List[ int ] ] = { key: [ val1, val2 ] }
//
//
import "sort"
// //----< set >-------------------------------//
// using std::set;                             // Ordered Set (Red-Black Tree)
// GO_USAGE:
//     var s = map[ int ]bool{}
//     var s = make( map[ int ]bool, 0, 5 )  -- Init set with size 0 and capacity 5
//     s := map[ int ]bool{}
//     s := make( map[ int ]bool )  -- Init set with size 0 and initial capacity 0
//
//     s[ 0 ] = True
//     s[ 1 ] = True
//     s[ 4 ] = True
//
//     keys = []int{}
//     for i := range s {
//         keys = append( keys, i )
//     }
//
//     sort.Ints( keys )
//
//     sort.Strings( keys )
//
//     sort.Slice( keys, func( i, j int ) bool {    -- sort.Slice() is faster than sort.SliceStable()
//         return keys[ i ] < keys[ j ]
//     })
//
//     sort.SliceStable( keys, func( i, j int ) bool {
//         return keys[ i ] < keys[ j ]
//     })
//
//     for _, k := range keys {
//         fmt.Println( k, s[ k ] )
//     }
//
//     for len( s ) > 0 {
//         delete( s, 0 )
//         delete( s, 1 )
//         delete( s, 4 )
//     }
//
//     if _, ok := s[ 0 ]; !ok {
//         fmt.Println( fmt.Errorf( "First Element NOT Found!!!" ) )
//     }
//
//
// using std::multiset;                        // Ordered Set (Red-Black Tree) & Allow duplicated keys
// GO_USAGE:
//     d : Dict[ str, int ] = { key1: count1, key2: count2 }
//     ds : List[ Tuple[ str, int ] ] = sorted( d.items() )
//     ds : Dict[ str, int ] = dict( sorted( d.items() ) )
//     ds : OrderedDict[ str, int ] = OrderedDict( sorted( d.items() ) )
//
//     s.add( 5 )
//     s.add( 4 )
//     s.discard( 1 )
//     s.discard( 4 )
//     try:
//         s.remove( 6 )
//     except KeyError:
//         print( "6 is not present in set" )
//
//
// //----< unordered_set >---------------------//
// using std::unordered_set;                   // HashSet (SeparateChainingHashST)
// PYTHON_USAGE:
//     s : Set[ int ] = set( ( 1, 2, 3 ) ) -- set from Tuple
//     s : Set[ int ] = set( [ 1, 2, 3 ] ) -- set from List
//     s : Set[ str ] = set( "ABC" )       -- set from str
//
//     s.add( 5 )
//     s.add( 4 )
//     s.discard( 1 )
//     s.discard( 4 )
//     try:
//         s.remove( 6 )
//     except KeyError:
//         print( "6 is not present in set" )
//
//
// using std::unordered_multiset;              // HashSet (SeparateChainingHashST) & Allow duplicated keys
// PYTHON_USAGE:
//     d : Dict[ str, int ] = { key1: count1, key2: count2 }
//

// //----< deque >-----------------------------//
// using std::deque;                           // Vector of fixed-size Vectors: 1 fixed-size vector for each end of the deque
// GO_USAGE:
//     l := list.New()
//     l.PushBack( "A" )
//     l.PushFront( "B" )
//     l.PushBack( "C" )
//     l.PushFront( "D" )
//     for node := l.Front(); node != nil; node = node.Next() {
//         fmt.Println( node.Value )
//     }
//     fmt.Println( l.Remove( l.Back() ) )  -- output: "C"
//     fmt.Println( l.Remove( l.Front() ) )  -- output: "D"
//

// //----< queue >-----------------------------//
// using std::queue;                           // Non-Iterable & Use std::deque as underlying data structure
// GO_USAGE:
//     l := list.New()
//     l.PushBack( "A" )
//     l.PushFront( "B" )
//     l.PushBack( "C" )
//     l.PushFront( "D" )
//     for node := l.Front(); node != nil; node = node.Next() {
//         fmt.Println( node.Value )
//     }
//     fmt.Println( l.Remove( l.Back() ) )  -- output: "C"
//     fmt.Println( l.Remove( l.Front() ) )  -- output: "D"
//

// import heapq
// from queue import PriorityQueue
// using std::priority_queue;                  // MaxPQ (MaxHeap) & Non-Iterable.
// //                                          // => Pass std::greater<> as template params to create MinPQ (MinHeap)
// GO_USAGE:
// MIN_HEAP:
//     type IntHeap []int
//
//     func (h IntHeap) Len() int {
//         return len(h)
//     }
//
//     // MIN_HEAP HERE!!!
//     func (h IntHeap) Less(i, j int) bool {
//         return h[i] < h[j]
//     }
//
//     func (h IntHeap) Swap(i, j int) {
//         h[i], h[j] = h[j], h[i]
//     }
//
//     func (h *IntHeap) Push(x interface{}) {
//         *h = append(*h, x.(int))
//     }
//
//     func (h *IntHeap) Pop() interface{} {
//         old := *h
//         n := len(old)
//         x := old[n-1]
//         *h = old[0:n-1]
//         return x
//     }
//
//     func main() {
//         nums := []int{3,2,20,5,3,1,2,5,6,9,10,4}
//
// 	       // initialize the heap data structure
//         h := &IntHeap{}
//
// 	       // add all the values to heap, O(n log n)
// 	       for _, val := range nums { // O(n)
// 		       heap.Push(h, val) // O(log n)
// 	       }
//
// 	       // print all the values from the heap
// 	       // which should be in ascending order
// 	       for i := 0; i < len(nums); i++ {
// 	           fmt.Printf("%d,", heap.Pop(h).(int))
// 	       }
//     }
//
// MAX_HEAP:
//     type IntHeap []int
//
//     func (h IntHeap) Len() int {
//         return len(h)
//     }
//
//     // MAX_HEAP HERE!!!
//     func (h IntHeap) Less(i, j int) bool {
//         return h[i] > h[j]
//     }
//
//     func (h IntHeap) Swap(i, j int) {
//         h[i], h[j] = h[j], h[i]
//     }
//
//     func (h *IntHeap) Push(x interface{}) {
//         *h = append(*h, x.(int))
//     }
//
//     func (h *IntHeap) Pop() interface{} {
//         old := *h
//         n := len(old)
//         x := old[n-1]
//         *h = old[0:n-1]
//         return x
//     }
//
//     func main() {
//         nums := []int{3,2,20,5,3,1,2,5,6,9,10,4}
//
// 	       // initialize the heap data structure
//         h := &IntHeap{}
//
// 	       // add all the values to heap, O(n log n)
// 	       for _, val := range nums { // O(n)
// 		       heap.Push(h, val) // O(log n)
// 	       }
//
// 	       // print all the values from the heap
// 	       // which should be in ascending order
// 	       for i := 0; i < len(nums); i++ {
// 	           fmt.Printf("%d,", heap.Pop(h).(int))
// 	       }
//     }
//

// //----< stack >-----------------------------//
// using std::stack;                           // Non-Iterable & Use std::deque as underlying data structure
// GO_USAGE:
//     var st []int = []int{}
//     st := []int{}
//
//     st = append( st, 1 )
//     st = append( st, 2 )
//     st = append( st, 3 )
//     for len(st) > 0 {
//         fmt.Println( st[ len( st ) - 1 ] )
//         st = st[ : len( st ) - 1 ]
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
// PYTHON_USAGE:
// MIN_HEAP:
//     class Value:
//         OPTIONAL_STATIC_VARIABLE_1 = ""
//         OPTIONAL_STATIC_VARIABLE_2 = ""
//
//         def __init__( self, val ):
//             self.val = val
//
//         def __lt__( self, other ):
//             return self.val < other.val
//
//     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
//     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
//     heapq.heapify( l )
//     print( l )
//
//     heapq.heappush( l, "G" )
//     heapq.heappush( l, "G" )
//
//     print( heapq.heappop( l ) )
//
//     print( heapq.heappushpop( l, "A" ) )  -- output "A"
//
//     print( heapq.heapreplace( l, "A" ) )  -- output "B"
//
// MAX_HEAP:
//     class Value:
//         OPTIONAL_STATIC_VARIABLE_1 = ""
//         OPTIONAL_STATIC_VARIABLE_2 = ""
//
//         def __init__( self, val ):
//             self.val = val
//
//         def __lt__( self, other ):
//             return self.val > other.val
//
//     li : List[ int ] = [ 1, 2, 3, 4, 5 ]
//     ls : List[ str ] = [ "B", "C", 'D', "E", "E", "E", "F" ]
//     l : List[ Value ] = [ Value( val ) for val in ls ]
//     heapq.heapify( l )
//     for item in l:
//         print( item.val )
//
//     heapq.heappush( l, "B" )
//     heapq.heappush( l, "B" )
//
//     print( heapq.heappop( l ) )
//
//     print( heapq.heappushpop( l, "G" ) )  -- output "G"
//     print( heapq.heapreplace( l, "H" ) )  -- output "G"
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

// from bisect import bisect
// from bisect import bisect_left
// from bisect import bisect_right
// from bisect import insort
// from bisect import insort_left
// from bisect import insort_right
// using std::binary_search;
// PYTHON_USAGE:
//     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
//     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
//
//     l.sort()
//     print( bisect( l, "E", 0, -1 ) )  -- output: 5
//     print( bisect_left( l, "E", 0, -1 ) )  -- output: 3
//     print( bisect_right( l, "E", 0, -1 ) )  -- output: 5
//
//     l.sort()
//     insort( l, "E", 0, -1 )  -- insert at the right-most index
//     print( l )
//
//     insort_left( l, "E", 0, -1 )  -- insert at the left-most index
//     print( l )
//
//     print( insort_right( l, "E", 0, -1 ) )  -- insert at the right-most index
//     print( l )
//
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
// PYTHON_USAGE:
//     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
//     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
//
//     l.sort()
//     print( bisect_left( l, "E", 0, -1 ) )  -- output: 3
//
//
// using std::upper_bound;                     // Returns iter pointing to first element > value
// PYTHON_USAGE:
//     l : List[ int ] = [ 5, 4, 3, 2, 1, 0 ]
//     l : List[ str ] = [ "F", "E", "E", "E", "D", "C", "B" ]
//
//     l.sort()
//     print( bisect( l, "E", 0, -1 ) )  -- output: 5
//     print( bisect_right( l, "E", 0, -1 ) )  -- output: 5
//
//
// using std::transform;                       // Apply the given function to a range and store result in another range
// PYTHON_USAGE:
//     l : 
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
// //----< cctype >----------------------------//
// using std::isalnum;
// using std::isalpha;
// using std::islower;
// using std::isupper;
// using std::isdigit;
// using std::isspace;                         // Check whether char is whitespace character (space, newline, tab, etc. )
// using std::isblank;                         // Check whether char is blank character ( space or tab )
// using std::tolower;
// using std::toupper;
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
//
// //----< thread >----------------------------//
// using std::thread;
// namespace this_thread = std::this_thread;   // Manipulate / Info of the current thread
// // using this_thread::get_id;                  // Get the current thread's id
// // using this_thread::yield;                   // Yield to other threads
// // using this_thread::sleep_until;             // Sleep until time point
// // using this_thread::sleep_for;               // Sleep for time span
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
//
// //----< condition_variable >----------------//
// using std::condition_variable;
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
// //------------------------------------------//
//

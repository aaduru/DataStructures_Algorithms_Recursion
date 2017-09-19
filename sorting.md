# Sorting
Selection Sort
The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.

1) The subarray which is already sorted.
2) Remaining subarray which is unsorted.

Best case: Quadratic
Average Case: Quadratic
Worst Case: Quadratic
Advantage: Fewest number of swaps in situations where swapping our data can take a very long time due to very large amounts of it to move back and forth, swapping might have such a large constant on it that it would overshadow everything else.

Disadvantage: Quadratic in all cases, cant even be improved if the array is partially sorted.


Insertion Sort
Insertion sort is a simple sorting algorithm that works the way we sort playing cards in our hands.

Algorithm
// Sort an arr[] of size n
insertionSort(arr, n)
Loop from i = 1 to n-1.
……a) Pick element arr[i] and insert it into sorted sequence arr[0…i-1]


Best case: Linear
Average Case: Quadratic, though about half the time of the worst case
Worst Case: Quadratic
Advantage: works well for partially or completely sorted arrays. Also good for small arrays since quicksort and mergesort tend to over kill such arrays.
Disadvantage: Quadratic for randomly arranged array.



Bubble Sort
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.

QuickSort
Like Merge Sort, QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot. There are many different versions of quickSort that pick pivot in different ways.

Always pick first element as pivot.
Always pick last element as pivot.
Pick a random element as pivot.
Pick median as pivot.
The key process in quickSort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.


Best case: n log n
Average Case: n log n
Worst Case: Quadratic
Advantage:  faster algorithm. Both Quicksort and Mergesort have same order of growth, but in terms of constant factors of that n log n term quicksort's constant are lower.
Disadvantage: Worst case is Quadratic.


Merge Sort
Like QuickSort, Merge Sort is a Divide and Conquer algorithm. It divides input array in two halves, calls itself for the two halves and then merges the two sorted halves. The merge() function is used for merging two halves. The merge(arr, l, m, r) is key process that assumes that arr[l..m] and arr[m+1..r] are sorted and merges the two sorted sub-arrays into one. See following C implementation for details.


Best case: n log n
Average Case: n log n
Worst Case: n log n
Advantage: nlog n in all cases even worst case.
Disadvantage: Uses extra memory. This is a problem if the array size is huge.

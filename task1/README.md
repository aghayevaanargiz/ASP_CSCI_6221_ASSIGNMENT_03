# Task 1: Comparing Array Storage in C

## What is this experiment about?

For this task, I wanted to understand whether the way an array is stored in memory affects how long a program takes to execute.

In C, an array can have different storage durations and can be allocated in different memory areas. In this experiment, I compared three approaches:

1. **Static array:** The array is created using the `static` keyword. It keeps its values between function calls.
2. **Automatic array (stack):** The array is declared inside a function without `static`. Its lifetime is limited to the function call.
3. **Heap array:** The array is allocated dynamically using `malloc()` and released using `free()`.

The goal was to see how these approaches behave when the same function is called many times.

## How did I run the experiment?

I wrote three functions in C, one for each type of array. Each array contains **100,000 integers**, and each function is called **100,000 times**.

During every function call, I assign a value to each element of the array. This gives each function the same basic array initialization task.

For the heap array, I also allocate memory at the beginning of each function call and release it before returning. The other two arrays do not require an explicit allocation and release operation on every call.

I used the `clock()` function from the C standard library to measure the execution time of each set of function calls. I then printed the results in seconds.

I also included a checksum. The program adds together three selected array elements during every function call. This gives me a simple way to check that the expected values are being used in the calculations.

I used the `volatile` keyword for the arrays to help prevent the compiler from optimizing away the array accesses. This helps ensure that the program performs the memory operations I intended to measure. However, `volatile` can also affect performance, so the results reflect this particular implementation.

## Results

These are the results from my OnlineGDB run.

| Array type | Execution time |
|---|---:|
| Static array | 21.338133 seconds |
| Automatic array (stack) | 21.103858 seconds |
| Heap array | 23.175409 seconds |

The final checksum was `44999700000`, which matches the expected value.

## What did I learn from the results?

In this particular run, the automatic array was the fastest, taking about 21.10 seconds. The static array took about 21.34 seconds, which is very close to the automatic array's result. The heap array was the slowest, taking about 23.18 seconds.

One possible explanation for the heap array's longer execution time is that it requires additional work on every function call. The program must request memory using `malloc()` and then release it using `free()`, in addition to assigning values to the array elements.

The static array is reused across function calls, while the automatic array has a lifetime associated with its function call. Neither requires the same repeated explicit allocation and deallocation operations as the heap version.

The difference between the static and automatic arrays was small. Because of this, I would not conclude that one is always faster than the other based on this experiment alone.

## What should I keep in mind?

These measurements are from one run on OnlineGDB. The results may change depending on the compiler, its optimization settings, the machine running the program, and other system activity.

The experiment compares the complete functions as implemented, rather than measuring memory allocation in isolation. In particular, the heap measurement includes both allocation and deallocation.

The compiler settings also matter. If optimization is enabled, the compiler may remove some array writes that do not affect the program's observable output. Therefore, the optimization setting should be recorded when reporting the results.

## Conclusion

This experiment helped me understand the practical differences between static, automatic, and dynamically allocated arrays in C. It also showed me how to measure execution time using `clock()` and compare the results of repeated function calls.

In my run, the heap implementation took longer than the other two implementations. This is consistent with the additional work of repeatedly allocating and releasing memory, although the experiment does not establish a universal performance ranking.

Overall, I learned that the choice of memory allocation method affects how memory is managed and can influence execution time. To make stronger conclusions, I would repeat the experiment under the same compiler settings and compare the results across multiple runs.


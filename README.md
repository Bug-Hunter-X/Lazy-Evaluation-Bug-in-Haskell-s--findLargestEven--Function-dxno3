# Haskell Lazy Evaluation Bug
This repository demonstrates a subtle bug in a Haskell function that uses lazy evaluation. The function `findLargestEven` aims to find the largest even number in a list, but it fails to terminate when provided with an infinite list of odd numbers followed by an even number. This occurs because Haskell's lazy evaluation only evaluates expressions when their results are needed, but in this case, the largest even number is never 'needed' until the end of the (potentially infinite) odd number sequence.

The solution demonstrates how to address the bug using strict evaluation to ensure the list is processed in a finite time.
The solution introduces explicit strict evaluation using the `seq` function to force evaluation of the list elements. This ensures that the list is traversed sequentially, and the function terminates even if the input list is infinite and contains only odd numbers before the first even number.

```haskell
findLargestEven :: [Integer] -> Maybe Integer
findLargestEven xs = findLargestEven' xs 0

findLargestEven' :: [Integer] -> Integer -> Maybe Integer
findLargestEven' [] maxEven = Just maxEven
findLargestEven' (x:xs) maxEven = 
    if even x
    then let newMaxEven = max x maxEven in
         (newMaxEven `seq` findLargestEven' xs newMaxEven)
    else findLargestEven' xs maxEven
```
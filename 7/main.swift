// Permutation

import Foundation

func nextPermutation(_ nums: inout [Int])
{
    var l = -1, i = nums.count - 2
    while i >= 0
    {
        if nums[i] < nums[i+1]
        {
            l = i;
            break
        }
            i -= 1
    }
    guard l != -1 else
    {
        nums = Array(nums.reversed())
        return
    }
    
    var r = -1
    i = nums.count - 1
   
    while i > l
    {
        if nums[i] > nums[l]
        {
            r = i;
            break
        }
        i -= 1
    }
    nums.swapAt(l, r)
    let arr: [Int] = Array(nums[l + 1...nums.count - 1])
    nums.replaceSubrange(l + 1..<nums.count, with: Array(arr).reversed())
}

func PrintResult(_ arr: inout [Int])
{
    var currentPermutation = arr.sorted()
    print(currentPermutation)
    
    let lastPermutation: [Int] = currentPermutation.reversed()
    
    while currentPermutation != lastPermutation
    {
        nextPermutation(&currentPermutation)
        print(currentPermutation)
    }
}


var arr1 = [1, 1, 1]
PrintResult(&arr1) // [1, 1, 1]

var arr2 = [1, 2, 3]
PrintResult(&arr2)
// [1, 1, 1]
// [1, 2, 3]
// [1, 3, 2]
// [2, 1, 3]
// [2, 3, 1]
// [3, 1, 2]
// [3, 2, 1]

var arr3 = [4, 0, 4]
PrintResult(&arr3)
// [0, 4, 4]
// [4, 0, 4]
// [4, 4, 0]

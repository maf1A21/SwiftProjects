//Имеется N человек и целые числа А1, ..., AN; человека i необходимо познакомить с Аi людьми. Можно ли это сделать?

// 0 1 2 3 4
// a b c d e

import Foundation

func IsItPossible (_ arr: inout [Int]) -> Bool
{
    arr.sort()
    arr.reverse()
    for i in 0..<arr.count
    {
        if arr[i] < 0 || arr[i] >= arr.count
        {
            return false
        }
        for j in i + 1..<i + 1 + arr[i]
        {
            arr[j] -= 1
        }
        arr[i] -= arr[i]
    }
    return true
}

func PrintResult(_ arr: inout [Int])
{
    if IsItPossible(&arr)
    {
        print("Yes")
    }

    else
    {
        print("No")
    }
}

var arr = [2, 1, 4, 3, 2]
PrintResult(&arr) // Yes

var arr1 = [1, 2, 3, 4, 5]
PrintResult(&arr1) // No

var arr3 = [1, 1]
PrintResult(&arr3) // Yes

var arr4 = [2, 1, 1]
PrintResult(&arr4) // Yes

var arr5 = [1, 0, 0, 2]
PrintResult(&arr5) // No

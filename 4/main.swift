// Two groups of stones (difference is not more than 2 times)

import Foundation


func MakeTwoGroups(givenArr: inout [Double], arr1: inout [Double], arr2: inout [Double]) -> Bool
{
    givenArr.sort()
    givenArr.reverse()
    var sum1 = 0.0
    var sum2 = 0.0
    for i in givenArr
    {
        if (sum1 <= sum2)
        {
            arr1.append(i)
            sum1 += i
        }
        else
        {
            arr2.append(i)
            sum2 += i
        }
    }
    return sum1 <= sum2 * 2 && sum2 <= sum1 * 2
}

let n = 10
var givenArrOfStones: [Double] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var firstArrOfStones: [Double] = []
var secondtArrOfStones: [Double] = []

if (MakeTwoGroups(givenArr: &givenArrOfStones, arr1: &firstArrOfStones, arr2: &secondtArrOfStones))
{
    print(firstArrOfStones) // [10, 7, 6, 3, 2]
    print(secondtArrOfStones) // [9, 8, 5, 4, 1]
}
else
{
    print("Can't sort them")
}


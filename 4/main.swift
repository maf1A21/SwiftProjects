// Two groups of stones

import Foundation


func MakeTwoGroups(givenArr: inout [Int], arr1: inout [Int], arr2: inout [Int]) -> Bool
{
    givenArr.sort()
    givenArr.reverse()
    var sum1 = 0
    var sum2 = 0
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
var givenArrOfStones = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
var firstArrOfStones: [Int] = []
var secondtArrOfStones: [Int] = []

if (MakeTwoGroups(givenArr: &givenArrOfStones, arr1: &firstArrOfStones, arr2: &secondtArrOfStones))
{
    print(firstArrOfStones) // [10, 7, 6, 3, 2]
    print(secondtArrOfStones) // [9, 8, 5, 4, 1]
}
else
{
    print("Can't sort them")
}

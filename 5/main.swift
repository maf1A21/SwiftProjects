// Two groups of stones (difference is not more than 1.5 times)

import Foundation


func MakeTwoGroups(givenArr: inout [Double], arr1: inout [Double], arr2: inout [Double]) -> Bool
{
    givenArr.sort()
    givenArr.reverse()
   
    var sum1 = 0.0
    var sum2 = 0.0
    arr1.append(givenArr[0])
    sum1 += givenArr[0]
    
    arr2.append(givenArr[1])
    sum2 += givenArr[1]
    
    arr2.append(givenArr[2])
    sum2 += givenArr[2]
  
    for i in 3..<givenArr.count
    {
        if (sum1 <= sum2)
        {
            arr1.append(givenArr[i])
            sum1 += givenArr[i]
        }
        else
        {
            arr2.append(givenArr[i])
            sum2 += givenArr[i]
        }
        
    }
    return sum1 <= sum2 * 1.5 && sum2 <= sum1 * 1.5
}

let n = 10
var givenArrOfStones: [Double] = [1, 1, 1, 0.5]
var firstArrOfStones: [Double] = []
var secondtArrOfStones: [Double] = []

if (MakeTwoGroups(givenArr: &givenArrOfStones, arr1: &firstArrOfStones, arr2: &secondtArrOfStones))
{
    print(firstArrOfStones) // [1.0, 0.5]
    print(secondtArrOfStones) // [1.0, 1.0]
}
else
{
    print("Can't sort them")
}

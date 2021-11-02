// Lucky n-long tickets
import Foundation
import Darwin.C.math

func SumOfDigits(x: Int) -> Int
{
    var tmp = x
    var sum = 0
    while tmp > 0
    {
        sum += (tmp % 10)
        tmp /= 10
    }
    return sum
}

func IsLucky (number: Int, halfSize: Int) -> Bool
{
    let firstHalf = number / NSDecimalNumber(decimal: pow(10, halfSize)).intValue
    let secondHalf = number % NSDecimalNumber(decimal: pow(10, halfSize)).intValue
    
    return SumOfDigits(x: firstHalf) == SumOfDigits(x: secondHalf)
}

func Solution(n: Int ,arr: [Int]) -> Int
{
    var res = 0
    for i in arr
    {
        if IsLucky(number: i, halfSize: n)
        {
            res += 1
        }
    }
    return res
}

let n = 3
let arr = [101101, 000021, 123006, 555533, 999999]
print(Solution(n: n, arr: arr)) // 3

let n1 = 4
let arr1 = [11114000, 00030021, 88888881, 12345500]
print(Solution(n: n1, arr: arr1)) //3



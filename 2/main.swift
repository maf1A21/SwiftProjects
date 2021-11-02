// Lucky tickets

import Foundation

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

func IsHappy (number: Int) -> Bool
{
    let firstTrio = number / 1000
    let secondTrio = number % 1000
    
    return SumOfDigits(x: firstTrio) == SumOfDigits(x: secondTrio)
}

func Solution(arr: [Int]) -> Int
{
    var res = 0
    for i in arr
    {
        if IsHappy(number: i)
        {
            res += 1
        }
    }
    return res
}

let arr = [101101, 000021, 123006, 555533, 999999]

print(Solution(arr: arr)) // 3

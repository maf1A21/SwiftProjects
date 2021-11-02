// Find 1/1! + ... + 1/k!

import Foundation

func factorial(factorialNumber: Int) -> Int
{
    if factorialNumber == 0
    {
        return 1
    }
    else
    {
        return factorialNumber * factorial(factorialNumber: factorialNumber - 1)
    }
}

func Solution(k: Int)
{
    var s:Double = 0
    if (k > 0)
    {
        for i in 1...k
        {
            s += 1.0/Double(factorial(factorialNumber: i))
        }
        print (s)
    }
    else
    {
        print("k must be a natural value")
    }
}

Solution(k: 1)  //1.0
Solution(k: 2)  //1.5
Solution(k: -1) //k must be a natural value
Solution(k: 8)  //1.71827876984127
Solution(k: 20) //1.7182818284590455
Solution(k: 0)  //k must be a natural value







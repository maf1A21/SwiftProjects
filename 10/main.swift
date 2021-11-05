// is binary number divisible by 15

import Foundation

// Добавляем к двоичному число необходимое число нулей
func Pad(string: String, toSize: Int) -> String
{
  var padded = string
  for _ in 0..<(toSize - string.count)
  {
    padded = "0" + padded
  }
    return padded
}

func SumOfTetrada (_ tetrada: String) -> Int
{
    return Int(tetrada, radix: 2)!
}

func IsDivisibleBy15(_ binaryNumber: String)
{
    var requiredSize = binaryNumber.count
    if requiredSize % 4 != 0
    {
        requiredSize += (4 - requiredSize % 4)
    }
    let requiredStrNumber = Pad(string: binaryNumber, toSize: requiredSize)
    
    var sum = 0
    for i in stride(from: 0, to: requiredSize, by: 4)
    {
        let start = requiredStrNumber.index(requiredStrNumber.startIndex, offsetBy: i)
        let end = requiredStrNumber.index(requiredStrNumber.endIndex, offsetBy: 4 + i - requiredSize)
        let range = start..<end
        sum += SumOfTetrada(String(requiredStrNumber[range]))
    }
    
    if (sum % 15 == 0)
    {
        print("Yes")
    }
    else
    {
        print("No")
    }
}

IsDivisibleBy15("1000")// No

IsDivisibleBy15("10010110")// Yes

IsDivisibleBy15("1111")// Yes

IsDivisibleBy15("1") // No

// all subsets

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

// Возвращает двоичное число заданного размера в виде массива нулей и единиц
func BinaryCount (_ number: Int, _ size: Int) -> [Int]
{
    let str = String(number, radix: 2)
    let pad = Pad(string: str, toSize: size)
    var res: [Int] = []
    for i in pad
    {
        if i == "0"
        {
            res.append(0)
        }
        else
        {
            res.append(1)
        }
    }
    return res
}

func PrintSubsets (_ n: Int)
{
    var set: [Int] = []
    for i in 0..<n
    {
        set.append(n - 1 - i)
    }
  
    let numberOfSubsets = Int(pow(2.0, Double(n)))
    
    print ("[]")
    for i in 1..<numberOfSubsets
    {
        var subset: [Int] = []
        let binary_i = BinaryCount(i, n) // 0, 0, 1
        for j in 0..<n
        {
            if binary_i[j] == 1
            {
                subset.append(set[j])
            }
        }
        print(subset)
    }
}


PrintSubsets(3)
//[]
//[0]
//[1]
//[1, 0]
//[2]
//[2, 0]
//[2, 1]
//[2, 1, 0]

PrintSubsets(4)
//[]
//[0]
//[1]
//[1, 0]
//[2]
//[2, 0]
//[2, 1]
//[2, 1, 0]
//[3]
//[3, 0]
//[3, 1]
//[3, 1, 0]
//[3, 2]
//[3, 2, 0]
//[3, 2, 1]
//[3, 2, 1, 0]

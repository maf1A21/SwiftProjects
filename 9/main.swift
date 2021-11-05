// subsets of 1...n - 1 size of k

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

func PrintSubsets (n: Int, k: Int)
{
    if k == 0
    {
        print("[]")
        return
    }
    
    var set: [Int] = []
    for i in 0..<n
    {
        set.append(n - i)
    }
  
    let numberOfSubsets = Int(pow(2.0, Double(n)))
    
   
    for i in 1..<numberOfSubsets
    {
        var subset: [Int] = []
        let binary_i = BinaryCount(i, n)
        var numOf1 = 0
        for j in 0..<n
        {
            if binary_i[j] == 1
            {
                numOf1 += 1
                subset.append(set[j])
            }
        }
        if numOf1 == k
        {
            print(subset)
        }
    }
}

PrintSubsets(n: 5, k: 0)
//[]

PrintSubsets(n: 3, k: 2)
//[2, 1]
//[3, 1]
//[3, 2]

PrintSubsets(n: 5, k: 3)
//[3, 2, 1]
//[4, 2, 1]
//[4, 3, 1]
//[4, 3, 2]
//[5, 2, 1]
//[5, 3, 1]
//[5, 3, 2]
//[5, 4, 1]
//[5, 4, 2]
//[5, 4, 3]


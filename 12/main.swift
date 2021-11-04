// Даны 2 точки A(x1,y1) и B(x2,y2). Определить, какой из отрезков, OA или OB, образует больший угол с осью OX.
import Foundation

struct Point
{
    var x: Double
    var y: Double
    init(_ x: Double = 0.0, _ y: Double = 0.0)
    {
        self.x = x
        self.y = y
    }
}

func Angle (_ point1: Point, _ point2: Point)
{
    if point1.x * point2.y - point2.x * point1.y < 0
    {
        print("<XOA больше чем <XOB")
    }
    else if point1.x * point2.y - point2.x * point1.y > 0
    {
        print("<XOB больше чем <XOA")
    }
    else
    {
        print("Углы равны ")
    }
}

let A = Point(1, 1)
let B = Point(-1, 1)

Angle(A, B) // <XOB больше чем <XOA

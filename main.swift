//64130010049 ปริญญา เติมกสิพาณิชย์
//Greatest Common Divisor (G.C.D) Calculator
import Foundation

var temp_status:Bool = false
var temp_input:String = ""
var gcd:Int = 1
var number:[Int] = [0,0,0]
var count:Int = 0

print("Greatest Common Divisor (G.C.D) Calculator")

while count < 3 {
  repeat {
    print("Enter Number \(count + 1) : ")
    temp_input = readLine()!
    if Int(temp_input) != nil {
      number[count] = Int(temp_input)!
      temp_status = true
    }
  }while(temp_status == false || number[count] < 0)
  temp_status = false
  count += 1
}

count = 1
while count <= number[0] && count <= number[1] && count <= number[2] {
  if number[0] % count == 0 && number[1] % count == 0 && number[2] % count == 0 {
    gcd *= count
    number[0] = number[0] / count
    number[1] = number[1] / count
    number[2] = number[2] / count
    count = 1
  }
  count += 1
}
print("Greatest Common Divisor (G.C.D) is \(gcd)")

////////////////////////////////////////////////////////////////////

// import Foundation

// var temp_status:Bool = false
// var temp_input:String = ""
// var gcd:Int = 0
// var number:[Int] = [0,0,0]
// var count:Int = 0

// while count < 3 {
//   repeat {
//     print("Enter Number \(count + 1) : ")
//     temp_input = readLine()!
//     if Int(temp_input) != nil {
//       number[count] = Int(temp_input)!
//       temp_status = true
//     }
//   }while(temp_status == false || number[count] < 0)
//   temp_status = false
//   count += 1
// }

// count = 1
// while count <= number[0] && count <= number[1] && count <= number[2] {
//   if number[0] % count == 0 && number[1] % count == 0 && number[2] % count == 0 {
//     gcd = count
//   }
//   count += 1
// }
// print("Greatest Common Divisor (G.C.D) is \(gcd)")
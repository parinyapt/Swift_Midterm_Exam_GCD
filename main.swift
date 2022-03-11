import Foundation

var temp_status:Bool = false
var temp_input:String = ""
var gcd:Int = 0
var number:[Int] = [0,0,0]
var count:Int = 1

print("Enter Number 1 : ")
number[0] = Int(readLine()!)!

print("Enter Number 2 : ")
number[1] = Int(readLine()!)!

print("Enter Number 3 : ")
number[2] = Int(readLine()!)!

while count <= number[0] && count <= number[1] && count <= number[2] {
  print(count)
  if number[0] % count == 0 && number[1] % count == 0 && number[2] % count == 0 {
    gcd = count
  }
  count += 1
}
print("Greatest Common Divisor (G.C.D) is \(gcd)")
import UIKit
// Enter string
let bracketsString: String = "()[]"
if(bracketsString.count  % 2  == 0){
    var  arrayBrackets = Array(bracketsString)
    var band = false
    for index in stride(from: 0, to: bracketsString.count, by: 2){
       var bracket = "\(arrayBrackets[index])\(arrayBrackets[index + 1])"
        if bracket == "()" || bracket == "[]"  || bracket == "{}"{
            band = true
        }else{
            band = false
            break
        }
    }
    print(band ? "true" : "false")
}else{
    print("false")
}


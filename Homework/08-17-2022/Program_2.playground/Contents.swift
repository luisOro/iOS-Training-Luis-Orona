import UIKit

let nums: [Int] = [2,7,11,-2,9,0]
let target: Int = 9
var dictNums =  Dictionary(uniqueKeysWithValues: nums.enumerated().map{($0,$1)})
var printer: String = ""
while(!dictNums.isEmpty && dictNums.count > 1){
    let firstNumber = dictNums.first!
    var remainig: Int = target - firstNumber.value
    if let index = dictNums.firstIndex(where: { $1 == remainig && $0 != firstNumber.key }){
        let indexKey = dictNums[index].key
        printer += "[\(firstNumber.key),\(dictNums[index].key)] "
        dictNums.removeValue(forKey: firstNumber.key)
        dictNums.removeValue(forKey: indexKey)
    }
    else{
        dictNums.removeValue(forKey: firstNumber.key)
    }
}
print(printer)


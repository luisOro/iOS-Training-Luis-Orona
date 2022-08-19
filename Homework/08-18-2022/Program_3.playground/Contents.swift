import UIKit
func checkStrs(array strs: [String]) -> String {
    guard var firstWord = strs.first else{
        return ""
    }
    if(strs.count == 1){
        return firstWord
    }
    else{
        while(firstWord.count > 0){
            let countWords = strs.filter {  word in
                return word.hasPrefix(firstWord)
            }.count
            if(countWords == strs.count){
                return firstWord
            }
            firstWord.removeLast()
        }
        return "nothing"
    }
}
var strs: [String] = ["flower", "flow", "floght", "flo"]
strs.sort(by: {$0.count < $1.count})
print(checkStrs(array: strs))


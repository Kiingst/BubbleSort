func sort(ArrayFirst: [String]) -> [String] {

    var Array = ArrayFirst
   // var SortNumArray: [Int] = []
/*
    for i in 0...Array.count - 1 {
        SortNumArray.append(get_SortNum(Word1: Array[i]))
        }
        
 */

    var x = isArrayTrue(Array: Array)
    while x == false {

        for i in 0...Array.count - 1 {
            if i + 1 <= Array.count - 1 {

          //      let tempi1 = SortNumArray[i]
          //      let tempi2 = SortNumArray[i + 1]
                let tempWord1 = Array[i]
                let tempWord2 = Array[i + 1]

                if Array[i] > Array[i + 1] {

                    Array[i] = tempWord2
                    Array[i + 1] = tempWord1

            //        SortNumArray[i] = tempi2
            //        SortNumArray[i + 1] = tempi1

                }

            }
        }
        x = isArrayTrue(Array: Array)
    }
    print("Returing Array")
    return Array
}
func isArrayTrue(Array:[String]) -> Bool {
    for i in 0...Array.count - 1 {

        if i + 1 <= Array.count - 1 {

            if Array[i] > Array[i + 1]{

                return false

            }
        }
    }
    return true
}

var x : [String] = []

print("Type A word then enter to add to a list for them to be sorted")
print("Type Ctrl-D to exit")
var line : String?
repeat {
    //    print("Please Enter A Random word:")
    line = readLine()
    if line != nil {
        x.insert(line!, at: 0)


    }
} while line != nil


let w = sort(ArrayFirst: x)
print(w)

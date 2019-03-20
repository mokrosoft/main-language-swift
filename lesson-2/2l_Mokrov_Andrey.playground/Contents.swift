import UIKit


//////////////////////////////////Написать функцию, которая определяет, четное число или нет.
print ("________________________________________________________1")
func isEvenNumber(num: Double){
    if num.truncatingRemainder(dividingBy: 2) == 0{
        print("\(num) четное")
    }else{
        print("\(num) не четное")
    }
    
}
isEvenNumber(num: 2)
isEvenNumber(num: 77)
////////////////////////////Написать функцию, которая определяет, делится ли число без остатка на 3.
print ("________________________________________________________2")
func isDevideFree(num: Double){
    if num.truncatingRemainder(dividingBy: 3) == 0{
        print("\(num) делится на 3 без остатка")
    }else{
        print("\(num) делится на 3 остатком")
    }
}
isDevideFree(num: 3)
isDevideFree(num: 7)
print ("________________________________________________________3")

////////////////////////////Создать возрастающий массив из 100 чисел.
var arrayRising: [Double] = []

for i in 1...100{
    arrayRising.append(Double(i))
}
print(arrayRising)
//////////////////////////// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
print ("________________________________________________________4")

for (_, value) in arrayRising.enumerated(){
    //if
    //if (somethig) arrayRising.remove(at: arrayRising.index(of: value)!)
    if value.truncatingRemainder(dividingBy: 3) == 0 || value.truncatingRemainder(dividingBy: 2) == 0
    {
            arrayRising.remove(at: arrayRising.index(of: value)!)
    }
 
    
}
print(arrayRising)

print ("________________________________________________________5")

var fn: Double = 0;
var arrFn: [Double] = []

for _ in(1...100){
    fn = fn-1+fn-2
    arrFn.append(fn)
}
print (arrFn)
print ("________________________________________________________6")
var simpleArr: [Int] = []

for i in(2...100){
    simpleArr.append(i)
}
var p = 2
var n = simpleArr[simpleArr.count-1]//последний элемент
var steps = 2

while(p < n){
    steps = 2
    while (steps*p <= n){
        let deleteValue: Int = steps*p
        //print("delete value \(deleteValue)")
        if  simpleArr.index(of: deleteValue) != nil {
            let deleteIndex = simpleArr.index(of: deleteValue)!
            simpleArr.remove(at: deleteIndex)
        }
        steps += 1
    }
    for (_, value) in simpleArr.enumerated(){
        if (value > p){
            p = value
            break
        }
    }
    if (p == simpleArr[simpleArr.count-1]){
        break
    }
    //print("p = \(p)")
    
    
}
print (simpleArr)


print ("быстропишушийя алгоритм 5мин")
var simpleArr2: [Int] = []
var simpleArrResult: [Int] = []
for i in(0...100){
    simpleArr2.append(i)
}

func isSimpleNum(val: Int)->Bool{
    var devide = 2;
    while(devide < val){
        if val%devide == 0 {
            return false
        }
        devide += 1
    }
    return true;
    
}
for (_, value) in simpleArr2.enumerated(){
    if (isSimpleNum(val: value)) {
        simpleArrResult.append(value)
    }
}
print (simpleArrResult)

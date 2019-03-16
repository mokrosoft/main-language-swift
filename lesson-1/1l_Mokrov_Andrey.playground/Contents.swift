import UIKit

//========Квадратное уравнение
// a(x*x)+bx+c = 0
//x12 = (-b+- sqrt(b*b - 4ac)  ) / 2a

let a: Double = 2
//let b: Double = 3
let b: Double = 5
let c: Double = 3

let d: Double = pow(b, 2)-(4*a*c)

func quadraticSolution(a: Double, b: Double, dSqr: Double) -> Double{
    let result: Double = ((-1*b) + dSqr ) / (2*a)
    return result
}
if (d < 0){
    print("нет решения")
}else{
    let dSqr = sqrt(d)
    let x1 = quadraticSolution(a: a, b: b, dSqr: dSqr)
    let x2 = quadraticSolution(a: a, b: b, dSqr: (dSqr*(-1)))
    
    print ("x1: \(x1)")
    print ("x2: \(x2)")
}

print("===============================")
//============Треугольник
//a*a + b*b = c*c

//Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через    5 лет.

let catetA: Double = 2
let catetB: Double = 3


if (catetA < 0 || catetB < 0){
    print("нет решения с треугольником")
}else{
    let gipotenuza: Double = sqrt(pow(catetA, 2) + pow(catetB, 2))
    let perimetr: Double = catetA + catetB + gipotenuza
    let ploshad: Double = (catetA*catetB)/2
    print("gipotenuza: \(gipotenuza) perimetr: \(perimetr) ploshad: \(ploshad)")
}


//счет с процентами, начисление, каждый год на остаток
print("===============================")
let percentsPerYears: Double = 7
let yearsCount: Int = 5
let startMmoney: Double = 15000
var moneyFinish: Double = startMmoney

print("start money: \(moneyFinish)")
for index in 1...yearsCount{
    let percentAccured = moneyFinish * percentsPerYears / 100
    moneyFinish = moneyFinish + percentAccured
    print("percents: \(percentAccured) summ: \(moneyFinish)")
}
print("finish money: \(moneyFinish)")

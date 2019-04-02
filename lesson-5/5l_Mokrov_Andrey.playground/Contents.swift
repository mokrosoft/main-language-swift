import UIKit
protocol Car{ //----------------------- задание 1
    var color: String{get}
    var brand: String{get}
    func toWash()
}


extension Car{ // ----------------------- задание 2
    func openWindows() {
        print("Open window")
    }
    func closeWindow(){
        print("close windows")
    }
}

extension Car{
    func startEngine(){
        print("Start engine")
    }
    func stopEngine() {
        print("Stop engine")
    }
    
}

protocol Printable: CustomStringConvertible{ // -------------------Задание 4
    
}

class SportVehicle: Car, Printable{ // --------------------Задание 3
    var description: String
    
    init(color: String, brand: String) {
        self.color = color
        self.brand = brand
        self.description = "Спортивный автомобиль " + self.brand + " цвет " + self.color
    }
    var color: String
    
    var brand: String
    
    func toWash() {
        print("Моем аккуратно")
    }
    
    func turnOnSport(){
        print("включить спортвный режим")
    }
}

class TankCar: Car, Printable{
    var description: String
    
    init(color: String, brand: String) {
        self.color = color
        self.brand = brand
        self.description = "Цистерна автомобиль " + self.brand + " цвет " + self.color
    }
    
    var color: String
    
    var brand: String
    
    func toWash() {
        print("Моем только кабину")
    }
    
    func toUnloadCar(){
        print("Разгрузить грузовик")
    }
    
    
}

var var2108 = SportVehicle(color: "green", brand: "vaz") // ---------------- Задание 5

var2108.openWindows()// ---------------------Задание 4
var2108.startEngine()


print ("\(var2108)")


var gazel = TankCar(color: "green", brand: "gazell")

print ("\(gazel)") // ------------------------------Задание 6

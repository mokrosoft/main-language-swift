import UIKit

enum carAction { ////////////////////////////////////// Задание 3
    case startEngine
    case stopEngine
    case openWindows
    case closeWindows
    case loadCar(weight: Int)
    case unLoadCar(weight: Int)
    case bebe
}

struct passengerCar{ ////////////////////////// Задание 1
    let brandName: String////////////////////////////////////Задание 2
    let modelName: String
    let year: String
    let trunkWeight: Int
    var loadedTrunk: Int = 0
    var isEngineStart: Bool = false
    var isOpenWindow: Bool = false
    
    init(brandName: String, modelName: String, year: String, trunkWeight: Int){
        self.brandName = brandName
        self.modelName = modelName
        self.year = year
        self.trunkWeight = trunkWeight
    }
    
    func printCar(){
        var engineState = ""
        if isEngineStart {
            engineState = "заведен"
        } else {
            engineState = "заглушен"
        }
        var windowState = ""
        if isOpenWindow {
            windowState = "открыты"
        } else {
            windowState = "закрыты"
        }
        print("автомобиль \(brandName) \(modelName) \(year). загружен на \(loadedTrunk). Окна \(windowState). Двигатель \(engineState)")
    }
    
    mutating func startEngine(){
        self.isEngineStart = true
    }
    
    mutating func stotEngine(){
        self.isEngineStart = false
        
    }
    
    mutating func openWindow(){
        if isOpenWindow {
            print("Нельзя открыть, уже открытые окна")
        }else{
            print("окна открыты")
            self.isOpenWindow = true
        }
        
        
    }
    
    mutating func closeWindow(){
        self.isOpenWindow = false
        
    }
    
    mutating func loadTrunk(weight: Int){
        
        self.loadedTrunk += weight
        print("загружено \(self.loadedTrunk)")
        if self.loadedTrunk > self.trunkWeight {
            print("Автомобиль перегружен!!!!")
        }
    }
    
    mutating func unLoadTrunk(weight: Int){
        if (self.trunkWeight < weight){
            print("Невозможно разгрузить")
        }else{
            print("Разгружена")
            self.loadedTrunk -= weight
        }
    }
    
    mutating func doSomeAction(action: carAction){ /////////////////////////////////////// задание 4
        switch action {
        case .startEngine:
            self.startEngine()
        case .stopEngine:
            self.stotEngine()
        case .openWindows:
            self.openWindow()
        case .closeWindows:
            self.closeWindow()
        case let .loadCar(weight):
            self.loadTrunk(weight: weight)
            //self.loadTrunk(weight: )
        case let .unLoadCar(weight):
            self.unLoadTrunk(weight: weight)
        case .bebe:
            print("startEngine")
        
        }
    }
    
    
}


var lada: passengerCar = passengerCar(brandName: "Lada", modelName: "2101", year: "1985", trunkWeight: 1200)////////////////////////// Задание 1

lada.openWindow()
print(lada)
lada.loadTrunk(weight: 2000)
lada.unLoadTrunk(weight: 500)
print(lada)

var gezele: passengerCar = passengerCar(brandName: "Gaz", modelName: "gazele", year: "2015", trunkWeight: 3000)////////////////////////// Задание 1




//gezele.doSomeAction(action: .startEngine)
gezele.doSomeAction(action: .openWindows)//////////////////////////задание 5
gezele.doSomeAction(action: .openWindows)

gezele.doSomeAction(action: .loadCar(weight: 300))
gezele.doSomeAction(action: .loadCar(weight: 9000))
gezele.printCar()
gezele.doSomeAction(action: .startEngine)
gezele.doSomeAction(action: .closeWindows)
gezele.printCar() // /////////////// задание 6

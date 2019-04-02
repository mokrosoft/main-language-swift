import UIKit


func isDividedWithNoRemainder(by: Int) -> (Int) -> Bool {// Как называется?
    return {
        (number: Int) in number % by == 0
        
    }
}

let isEven = isDividedWithNoRemainder(by: 2) //мы присвоили нашу функции константе и передали ей значение by,
for i in 0...10 {
    print("(i) это чётное число: \(isEven(i))")
}

func isDevide2(by: Int) -> Bool{
    return false
}

let isEven22 = isDevide2(by: 2)

isDividedWithNoRemainder(by: 3)(2)
print("\(isEven22)")


enum EngineStatus: CustomStringConvertible {
    case on, off
    
    var description: String {
        switch self {
        case .on:
            return "Двигатель заведён"
        case .off:
            return "Двигатель заглушен"
        }
    }
}

enum WindowsStatus: CustomStringConvertible {
    case opened, closed
    
    var description: String {
        switch self {
        case .opened:
            return "Окна открыты"
        case .closed:
            return "Окна закрыты"
        }
    }
}

enum LoadStatus: CustomStringConvertible {
    case loaded, notLoaded
    
    var description: String {
        switch self {
        case .loaded:
            return "Авто загружен"
        case .notLoaded:
            return "Авто не загружен"
        }
    }
}



enum Actions{
    case openWindows
    case closeWindows
    case dropDown
    case bring
}

enum ActionsWithSportCar{
    case enableSport
    case disableSport
}

enum ActionsWithTrunkCar{
    case load
    case unload
}

class Car{ // 1 задание
    var brand: String
    var name: String
    var engineStatus: EngineStatus = .off
    var windows: WindowsStatus = .closed
    
    func doAction(action: Actions){
        switch action {
            case .openWindows:
                windows = .opened
            case .closeWindows:
                windows = .closed
            case .dropDown:
                self.drowDown()
            case .bring:
                self.bring()
        }
    }
    
    init(brand: String, name: String) {
        self.brand = brand
        self.name = name
    }
    
    func drowDown(){
        engineStatus = .off
    }
    
    func bring() {
        engineStatus = .on
    }
    
    func printEngineStatus(){
        print("Двигатель: \(engineStatus)")
    }
}

class TrunkCar: Car{
    var isHaveTrailer: Bool
    var bodyVolume: Int
    var loadStatus: LoadStatus
    
    init(isHaveTrailer: Bool, bodyVolume: Int, loadStatus: LoadStatus, brand: String, name: String) {
        self.isHaveTrailer = isHaveTrailer
        self.bodyVolume = bodyVolume
        self.loadStatus = loadStatus
        super.init(brand: brand, name: name)
    }
    
    func doTrunkAction(trunkAction: ActionsWithTrunkCar){
        switch trunkAction {
        case .load:
            self.loadStatus = .loaded
        case .unload:
            self.loadStatus = .notLoaded
        }
    }
    
    override func drowDown(){
        self.doAction(action: .closeWindows)
        super.drowDown()
    }
    
    func printLoadStatus(){
        print("\(loadStatus)")
    }
}

class SportCar: Car{ // 2е задание
    var isEnableSport: Bool
    let isFortyfiedBody: Bool
    
    init(isEnableSport: Bool, isFortyfiedBody: Bool, brand: String, name: String) {
        self.isEnableSport = isEnableSport
        self.isFortyfiedBody = isFortyfiedBody
        super.init(brand: brand, name: name)
    }
    
    func doSprortActions(acions: ActionsWithSportCar) { // задание 3
        switch acions {
        case .enableSport:
            self.isEnableSport = true
        case .disableSport:
            self.isEnableSport = false
        }
    }
    
    override func drowDown(){ // задание 4
        self.doSprortActions(acions: .disableSport)
        super.drowDown()
    }
    
}

var var2105: Car = Car(brand: "ваз", name: "2107")
var saab9000: Car = Car(brand: "SAAB", name: "9000")
var2105.doAction(action: .bring)
saab9000.doAction(action: .openWindows)


var accord: SportCar = SportCar(isEnableSport: false, isFortyfiedBody: false, brand: "Honda", name: "Accord")
var porsheRace: SportCar = SportCar(isEnableSport: false, isFortyfiedBody: false, brand: "Porse", name: "Race")
porsheRace.doAction(action: .bring)
porsheRace.doAction(action: .closeWindows)
porsheRace.doSprortActions(acions: .enableSport)
accord.doAction(action: .bring)

var gazell: TrunkCar = TrunkCar(isHaveTrailer: false, bodyVolume: 1400, loadStatus: .loaded, brand: "Газ", name: "Газель")
var tatra: TrunkCar = TrunkCar(isHaveTrailer: true, bodyVolume: 6000, loadStatus: .notLoaded, brand: "Татра", name: "Татра")
gazell.doAction(action: .bring)
gazell.doTrunkAction(trunkAction: .load)
tatra.doTrunkAction(trunkAction: .load)
tatra.doAction(action: .bring)
tatra.printEngineStatus()
tatra.printLoadStatus()

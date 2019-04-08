import UIKit


struct Queue<Type>{//===================================Задание 1
    private var elements: [Type] = []
    
    mutating func getElement() -> Type?{ // ===============Задание 3
        if (elements.count > 0){
            let el = elements[0]
            elements.remove(at: 0)
            return el
        } else {
            return nil
        }
    }
    
    mutating func addElenement(toAdd: Type){
        elements.append(toAdd)
    }
    
    
    // Возвращает массив элементов, по условию =================================== Задание 2
    mutating func getAndDeleteQueueElements(function:(Int) -> Bool) -> [Type]{
        var result: [Type] = []
        var tmpEl: [Type] = []
        var i = 0
        for el in elements {
            if (function(i)){
                result.append(el)
            }else{
                tmpEl.append(el)
            }
            i = i + 1
        }
        elements = tmpEl
        return result
    }
    
    // разделяет очередь по признаку, и вернет другую очередь ===========Задание 2
    mutating func splitQueue(function:(Int) -> Bool) -> Queue{
        var result = Queue<Type>()
        var tmpEl: [Type] = []
        var i = 0
        for el in elements {
            if (function(i)){
                result.addElenement(toAdd: el)
                
                //elements.remove(at: i)
            }else{
                tmpEl.append(el)
            }
            i = i + 1
        }
        elements = tmpEl
        return result
    }
    
    func getAllQueue() -> [Type] {
        return elements
    }
    
    
    
    
}


var queueString =  Queue<String>()
queueString.addElenement(toAdd: "Занимал 1")
queueString.addElenement(toAdd: "Занимал 2")
queueString.addElenement(toAdd: "Занимал 3")
queueString.addElenement(toAdd: "Занимал 4")
queueString.addElenement(toAdd: "Занимал 5")
queueString.addElenement(toAdd: "Занимал 6")
queueString.addElenement(toAdd: "Занимал 7")
queueString.addElenement(toAdd: "Занимал 8")
queueString.addElenement(toAdd: "Занимал 9")

var test: String? = queueString.getElement()
if (test != nil){
    print("\(test)")
}

test = queueString.getElement()
if (test != nil){
    print("\(test)")
}

print("\(queueString.getAllQueue())")

print("Возвращаем и удаляем")
var new = queueString.getAndDeleteQueueElements(){$0>1}
print("Очередь")
print("\(queueString.getAllQueue())")
print("Массив")
print("\(new)")
print("=============================")




var queueStringNew =  Queue<String>()
queueStringNew.addElenement(toAdd: "Занимал 1")
queueStringNew.addElenement(toAdd: "Занимал 2")
queueStringNew.addElenement(toAdd: "Занимал 3")
queueStringNew.addElenement(toAdd: "Занимал 4")
queueStringNew.addElenement(toAdd: "Занимал 5")
queueStringNew.addElenement(toAdd: "Занимал 6")
queueStringNew.addElenement(toAdd: "Занимал 7")
queueStringNew.addElenement(toAdd: "Занимал 8")
queueStringNew.addElenement(toAdd: "Занимал 9")


var slitedPartQueue =  Queue<String>()
slitedPartQueue = queueStringNew.splitQueue(){$0>2}

print("\(queueStringNew.getAllQueue())")
print("\(slitedPartQueue.getAllQueue())")












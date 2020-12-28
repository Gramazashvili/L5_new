//
//  main.swift
//  L_5
//
//  Created by Георгий Рамазашвили on 27.12.2020.
//
import Foundation


//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar  и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол c.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.
enum Color {
    case red,blue,green
}
enum Brand {
    case toyota,honda,bmw
}


protocol CustomStringConvertible {
    
}

protocol Car {
    
    var color: Color { get set }
    
    var brand: Brand { get set }
    
    func startEngine() -> String
}


extension Car {
    
    func openWindow() -> String{
        
        return "Открыли окна"
    }
    
    
    func closeWindow()-> String {
        return "Закрыли окна"
    }
    
}


class trunkCar: Car {
    var color: Color
    var brand: Brand
    var kg: Int
    init(color: Color, brand: Brand, kg: Int) {
        self.color = color
        self.brand = brand
        self.kg = kg
    }
    
    func startEngine() -> String {
        
      return  "Завели двигатель грузовика"
    }
    
    
}


class sportCar: Car {
    var color: Color
    var brand: Brand
    var maxspeed: Int
    init(color: Color, brand: Brand, maxspeed: Int) {
        self.color = color
        self.brand = brand
        self.maxspeed = maxspeed
    }
    
    func startEngine() -> String {
        
      return  "Завели двигатель спортивного автомобиля"
    }
    
    
}

extension trunkCar: CustomStringConvertible {
    
}

extension sportCar: CustomStringConvertible {
    
}
let mytrunkcar = trunkCar(color: .blue, brand: .bmw, kg: 1000)
print(mytrunkcar.openWindow())

var mysportcar = trunkCar(color: .blue, brand: .bmw, kg: 1000)
print(mysportcar.closeWindow())
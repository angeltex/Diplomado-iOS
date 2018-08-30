//: Playground - noun: a place where people can play

import UIKit

class Alumno: CustomStringConvertible{
    var nombre: String = "nobody"
    var description: String {
        return "Yo soy \(nombre)"
    }

}


var luis = Alumno()
print(luis)

struct Empleado: Equatable,Comparable, CustomStringConvertible, Codable{
    
    static func < (lhs: Empleado, rhs: Empleado) -> Bool {
        return lhs.edad < rhs.edad
    }
    
    var nombre: String
    var apellidos: String
    var edad: Int
    
    static func ==(lhs: Empleado, rhs: Empleado) -> Bool{
        return lhs.nombre == rhs.nombre && lhs.apellidos == rhs.apellidos
    }
    var description: String{
        return "\(nombre)- \(edad)"
    }

}

var godin1 = Empleado(nombre: "Angel", apellidos: "Sandoval",edad: 24)
var godin2 = Empleado(nombre: "Nancy", apellidos: "Cano", edad: 26)
var godin3 = Empleado(nombre: "Nancy", apellidos: "Cano", edad: 18)
var godin4 = Empleado(nombre: "Nancy", apellidos: "Cano", edad: 16)
var godin5 = Empleado(nombre: "Nancy", apellidos: "Cano", edad: 27)

var empleados = [godin2,godin2,godin3,godin4,godin5]
let empleadosOrdenados = empleados.sorted(by:<)
for empleado in empleadosOrdenados{
    print(empleado)
}


if godin1 == godin2{
    print("son iguales")
}else{
print("no son iguales")
}


let jsonEncoder = JSONEncoder()

if let jsonData = try? jsonEncoder.encode(godin1),let jsonString = String(data: jsonData, encoding: .utf8){
    print(jsonString)
}


protocol NombreCompleto{
    var nameFull: String { get }
    
    func diNameFull()
}

struct Persona: NombreCompleto{
    var nombre : String
    var apellidos : String
    
    var nameFull: String{
        return "\(nombre) \(apellidos)"
    }
    
    func diNameFull() {
        print(nameFull)
        
    }
    

}

var manuel = Persona(nombre: "Angel", apellidos: "Sandoval")
manuel.diNameFull()

//: Playground - noun: a place where people can play

import UIKit

struct Alumno{
    var nombre : String
    var edad : Int
    var carrera: String = "Ing. Computacion"{
        willSet{
            print ("Este sera el numevo valor \(newValue)")
        }
        didSet{
            print("Este fue el valor asignado \(oldValue)")
        }
    }
    mutating func cambiaValor(){
        nombre = "nobody"
    }
    
    init (nombre: String){
        self.nombre = nombre
        self.edad = 0
    }
    
    init (edad: Int){
        self.nombre = nombre
        self.edad = "desconocido"
    }
    
    init (nombre: String, edad: Int){
        self.nombre = nombre
        self.edad = edad
    }
}

var luis = Alumno(nombre: "Luis")
luis.carrera="Lic. Contaduria"
luis.carrera="Trabajo Social"


var pedro = luis
pedro.nombre = "pedro"

dump(pedro)
dump(luis)


class Profesor{
    var nombre : String = "none"
}

//Copia sobre la direccion de memoria.
var german = Profesor()
var  beto = german
beto.nombre = "Beto"

dump(german)
dump(beto)



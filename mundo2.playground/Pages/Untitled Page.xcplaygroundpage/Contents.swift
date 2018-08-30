//: Playground - noun: a place where people can play

import Foundation

var entero : Int = 100
var deciman : Double = 12.5

entero = Int(deciman)

var letra : Character = "A"
var cadena : String = "Esto es una cadena"

//Concatenacion
var mensaje = "Hola" + " me llamo: "
let nombre = "Angel"
mensaje + nombre
print(mensaje + nombre)

//Interpolación
// En una cadena incustrar valores de variables

var edad = 25
mensaje = "Hola, yo me llamo \(nombre) y tengo \(edad) años"
print(mensaje)

let cadenota = """
    Los de IC siempre han sido rockstars
    ahora los IE, IEE, y demas clanes, quieren serlo
    """
print(cadenota)

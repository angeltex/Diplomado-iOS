//: Playground - noun: a place where people can play

import UIKit

func suma (valor: Int, sumaFunc: (Int) -> Int) -> Int{
    return sumaFunc(valor)
}



let closure = {(valor: Int) -> Int in
    return valor + 5
}

suma(valor: 10, sumaFunc: closure)

suma (valor: 20, sumaFunc: {(valor: Int) -> Int in return valor + 10})

suma (valor: 20, sumaFunc: {valor in return valor + 10})

//$0 posicion del parametro de la funcion
suma (valor: 20, sumaFunc: {return $0 + 5})

suma (valor: 20){$0 + 10}



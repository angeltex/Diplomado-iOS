//: Playground - noun: a place where people can play

import UIKit

var str: String? = nil
if let unwrappedStr = str {
    print(unwrappedStr)
}


struct Book {
    var name: String
    var publicationYear: Int
}
let firstHarryPotter = Book(name: "Harry Potter and theSorcerer's Stone", publicationYear: 1997)
let secondHarryPotter = Book(name: "Harry Potter and theChamber of Secrets", publicationYear: 1998)
let thirdHarryPotter = Book(name: "Harry Potter and thePrisoner of Azkaban", publicationYear: 1999)
let books = [firstHarryPotter, secondHarryPotter,thirdHarryPotter]

/////////////////

let string = "123"
let possibleNumber = Int(string)
if let unwrappedNumber = possibleNumber{
print(unwrappedNumber)
}else{
    print("Por favor ingrese un numero valido")
}
let string2 = "Cinthya"
let possibleNumber2 = Int(string2)

///////////////////

struct Toddler{
    var name: String
    var monthsOld: Int
    
    init?(name: String, monthsOld: Int ){    //failabled inicialiter   inicializador falible
        if (monthsOld > 12 ){
            return nil
        }else{
            self.name = name
            self.monthsOld = monthsOld
        }
    }
}






let myBoy = Toddler(name: "Lalito", monthsOld: 24)
if let unwrappedToodler = myBoy{
    print(unwrappedToodler.monthsOld)
}else{
    print("No se pudo instanciar")
}


/////////////////////////


struct Person{
    var age: Int
    var residence: Residence?
}

struct Residence{
    var address: Address?
}
struct Address{
    var buildingNumber: String?
    var streetName: String?
    var apartmentNumber: String?
}

let person = Person(age: 10, residence:Residence(address: Address(buildingNumber:"10", streetName: "La calle de la amargura", apartmentNumber:"32")) )
if let  theResidence = person.residence{
    if let theAddress = theResidence.address{
        if let theApartmentNumber = theAddress.apartmentNumber{
            print("He/she lives in apartment number \(theApartmentNumber).")
        }else { print ("No tiene numero de departamento")}
        
    }else{ print("No tiene direccion")}
    
}else{print("No tiene residencia")}


if let theApartmentNumber = person.residence?.address?.apartmentNumber{
    print("He/She lives in apartment number \(theApartmentNumber)")
}

/*
if pet is Dog{
}else if pet is Cat{
}
*/

/*
for pet in pets{
    if let dog = pet as? Dog{
        walk(dog: dog)    }
}
*/

/*
var items: [Any] = [5,"Bill", 6.7, Dog()]
if let firstItem = Item[0] as? Int{
    print(firstItem +4)
}*/




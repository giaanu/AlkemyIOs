import UIKit
// 1. Definir una tupla que describa una dirección, con campos como ciudad, partido, provincia, calle, pais, codigoPostal, etc. Siéntanse libres de colocar todos los campos que consideren relevantes. Usar un diccionario para la calle con los campos nombreDeCalle, numero, entrecalle1 y entrecalle2.
// 2. Dentro de la dirección, definir algunos tipos de datos opcionales, entre ellos piso y departamento.
// 3. Definir tres direcciones en constantes.
// 4. Escribir una función que reciba una dirección y la imprima como un String bien formateado. Hacer uso de la interpolación.
// 5. Escribir una función que reciba un Array de direcciones y devuelva un String que contenga "piso: \(piso) ; depto: \(departamento)", SOLO para las direcciones que tengan definidos tanto un piso como un departamento.

//Tupla de Direccion con datos opcionales (Punto 1 y 2)
typealias Direccion=(ciudad:String, partido:String, provincia:String, barrio:String, calle:[String:Any], piso:Int?, departamento:String?, pais:String, codigoPostal:Int)

//Punto 3
let direccion1: Direccion=(
                            ciudad:"CABA",
                            partido:"CABA",
                            provincia:"Buenos Aires",
                            barrio:"Palermo",
                            calle:[
                                    "nombreDeCalle":"Jose Andres Pacheco de Melo",
                                    "numero":3056,
                                    "entreCalle1":"Avenida Coronel Diaz",
                                    "entreCalle2":"Billinghurst"
                                  ],
                            piso:5,
                            departamento:"C",
                            pais:"Argentina",
                            codigoPostal:1425)

let direccion2: Direccion=(
                            ciudad:"Avellaneda",
                            partido:"Villa Dominico",
                            provincia:"Buenos Aires",
                            barrio:"Wilde",
                            calle:[
                                    "nombreDeCalle":"De la Serna",
                                    "numero":5544,
                                    "entreCalle1":"Coronel Mendez",
                                    "entreCalle2":"Cotagaita"
                                  ],
                            piso:7,
                            departamento:"A",
                            pais:"Argentina",
                            codigoPostal:1875)

let direccion3: Direccion=(
                            ciudad:"CABA",
                            partido:"CABA",
                            provincia:"Buenos Aires",
                            barrio:"Parque Patricios",
                            calle:[
                                    "nombreDeCalle":"Prof. Dr. Pedro Chutro",
                                    "numero":3090,
                                    "entreCalle1":"Iguazu",
                                    "entreCalle2":"Monteagudo"
                                  ],
                            piso:nil,
                            departamento:nil,
                            pais:"Argentina",
                            codigoPostal:1437)

//Punto 4: Direccion formateada
func direccionBienFormateada(direccion: Direccion)->String{
    let direccionCompleta="\(direccion)"
    return direccionCompleta
}
print(direccionBienFormateada(direccion: direccion1))

//Punto 5: Funcion que devuelve piso y dpto si es valido.

func pisoYdpto(de direccion: Direccion)->String{
    if let pisoCheck=direccion.piso, let dptoCheck=direccion.departamento{
        return "El piso es \(pisoCheck) y el departamento es \(dptoCheck)"
    }
    else{
        return "Esta direccion no pertenece a un edifico y departamento"
    }
}
print(pisoYdpto(de: direccion2))
print(pisoYdpto(de: direccion3))

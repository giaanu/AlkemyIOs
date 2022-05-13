import UIKit
// 1. Definir una tupla que describa una dirección, con campos como ciudad, partido, provincia, calle, pais, codigoPostal, etc. Siéntanse libres de colocar todos los campos que consideren relevantes. Usar un diccionario para la calle con los campos nombreDeCalle, numero, entrecalle1 y entrecalle2.
//2. Dentro de la dirección, definir algunos tipos de datos opcionales, entre ellos piso y departamento.
// 3. Definir tres direcciones en constantes.
// 4. Escribir una función que reciba una dirección y la imprima como un String bien formateado. Hacer uso de la interpolación.
// 5. Escribir una función que reciba un Array de direcciones y devuelva un String que contenga "piso: \(piso) ; depto: \(departamento)", SOLO para las direcciones que tengan definidos tanto un piso como un departamento.

//Tuple de Direccion
var direccion=(ciudad:String, partido:String, provincia:String, calle:[String:any], numero:Int, pais:String, barrio:String, codigoPostal:Int, piso:Int?, departamento: String?, torre:Int?);


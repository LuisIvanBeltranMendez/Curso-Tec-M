//: Playground - noun: a place where people can play

import UIKit

var str = "Mini reto 2: Beltran Mendez Luis Ivan"



enum Velocidades :  Int {
    case Apagado  = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120;
    
    init(  velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
    
}
var arreglo : [Velocidades] = [.Apagado,.VelocidadBaja, . VelocidadMedia, .VelocidadAlta, . VelocidadMedia, .VelocidadAlta, . VelocidadMedia, .VelocidadAlta, . VelocidadMedia, .VelocidadAlta, . VelocidadMedia, .VelocidadAlta, . VelocidadMedia, .VelocidadAlta, . VelocidadMedia, .VelocidadAlta, . VelocidadMedia, .VelocidadAlta,
    . VelocidadMedia, .VelocidadAlta]

class Auto {
    var velocidad : Velocidades
    var indice : Int
    init(){
        self.velocidad = Velocidades(velocidadInicial : arreglo[0]);
        self.indice = 0;
    }
    func velocidadActual() -> ( actual : Int, velocidadEnCadena: String){
        velocidad = Velocidades(velocidadInicial: arreglo[indice])
        indice++;
        return (actual : velocidad.rawValue ,velocidadEnCadena : String(velocidad) )
    }
}
var auto = Auto()
for  indice in 0..<20 {
    print(auto.velocidadActual())
}
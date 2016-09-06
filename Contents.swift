//: Playground - noun: a place where people can play
// ***********************************************
// Proyecto: Juego Memoria
// Programador: Roberto Silva
// Fecha: Set - 2016
// ***********************************************

import UIKit

enum Velocidades: Int {
    case apagado = 0, velocidadBaja = 20, velocidadMedia = 50, velocidadAlta = 120
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

class Auto {
    var velocidad :Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .apagado)
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        var velocidadEnCadena:String
        var actual:Velocidades
        
        switch velocidad {
        case .apagado:
            actual = velocidad
            velocidad = .velocidadBaja
            velocidadEnCadena = "Apagado"
        case .velocidadBaja:
            actual = velocidad
            velocidad = .velocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .velocidadMedia :
            actual = velocidad
            velocidad = .velocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .velocidadAlta:
            actual = velocidad
            velocidad = .velocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        }
        
        return (actual.rawValue, velocidadEnCadena)
    }
}

let auto = Auto()

for _ in 0..<20{
    print(auto.cambioDeVelocidad())
}

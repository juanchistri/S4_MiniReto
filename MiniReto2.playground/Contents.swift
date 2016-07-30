//: Playground - noun: a place where people can play

import UIKit

enum Velocidades : Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad  : Velocidades
    
    init(){
        self.velocidad = Velocidades.Apagado
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        let now = self.velocidad.rawValue
        let actual = velocidad.rawValue
        let velocidadEnCadena = String(velocidad)
        
        switch now{
        case 20:
            self.velocidad = Velocidades.VelocidadMedia
        case 50:
            self.velocidad = Velocidades.VelocidadAlta
        case 120:
            self.velocidad = Velocidades.VelocidadMedia
        default:
            self.velocidad = Velocidades.VelocidadBaja
        }
        
        let resultado = (actual, velocidadEnCadena)
        return resultado
    }
    
}
var auto  = Auto()
for i in 1...20{
    let (actual, velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(i).- \(actual), \(velocidadEnCadena)")
}

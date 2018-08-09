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
        
        var actual: Int = 0 // deberia ser variable entera y con valor 0, cual es el equivalente a Apagado
        var actual = velocidad.rawValue // Deberia ser variable
        //let velocidadEnCadena = String(velocidad) // No deberia ir esta constante ya que esta como un valor de retorno
        
        switch velociad { // Se reemplaza por la instancia de la enumeraciòn 
            
            // Se corrigen los casos ya que se estaba llendo a buscar el raw.value y no la enumeraciòn en si, cual luego se usa para crear la instancia de la enuymeraciòn dentro de la case auto.
        case .Apagado:
            actual = velocidad.rawValue
            velocidadEnCadena = "Apagado"
            velocidad = Velocidades.VelocidadBaja
        case .VelocidadBaja:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velocidad Baja"
            velocidad = Velocidades.VelocidadMedia
        case .VelocidadMedia:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velociad Media"
            velocidad = Velocidades.VelocidadAlta
        case .VelocidadAlta:
            actual = velocidad.rawValue
            velocidadEnCadena = "Velociad Alta"
            velocidad = Velocidades.VelocidadMedia
        default:
           self.velocidad = Velocidades.Apagado
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

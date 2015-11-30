//: Velocimetro

import UIKit

enum Velocidades : Int{
    
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
    init ( velocidadInicial : Velocidades ){
        self = velocidadInicial
    }
}


class Auto{
    var velocidad : Velocidades
    var numeroDeVelocidad : Int
    init(){
        self.velocidad = .Apagado
        numeroDeVelocidad = self.velocidad.rawValue
    }
    
    func cambioDeVelocidad( ) -> ( actual : Int, velocidadEnCadena: String){
        
        var mensaje : String
        numeroDeVelocidad = self.velocidad.rawValue
        
        switch self.velocidad{
        case .Apagado:
            self.velocidad = .VelocidadBaja
            mensaje = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            mensaje = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            mensaje = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            mensaje = "Velocidad Alta"
        }
        return (actual : numeroDeVelocidad, velocidadEnCadena : mensaje)
    }
}

var auto = Auto()
var tupla : (actual : Int, velocidadEnCadena : String )
for var i in 1...20 {
    
    tupla = auto.cambioDeVelocidad()
    print("\(tupla.actual), \(tupla.velocidadEnCadena)")
}

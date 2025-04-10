object tom {
    var energia = 50
    var ultimoRatonComido = null
    method energia(cantidadEnergia) {energia = cantidadEnergia}
    method energia() {return energia}
    method ultimoRatonComido(unRaton) {ultimoRatonComido = unRaton}

    method comer(ratonAComer){
        energia = energia + 12 + ratonAComer.peso()
        ultimoRatonComido = ratonAComer
    }
    method correr(distanciaACorrer){
        energia = energia - (distanciaACorrer / 2)
    }
    method velocidadMaxima(){
        return 5 + energia / 10
    }
    method puedeCazar(distanciaDelRaton){
        return(distanciaDelRaton < energia)
    }
    method cazar(ratonACazar, distanciaAConsiderar){
        if(self.puedeCazar(distanciaAConsiderar)){
            self.comer(ratonACazar)
            self.correr(distanciaAConsiderar)
        }
        else{
            return("No puede cazar al raton debido a la distancia")
        }
    }
 }


object jerry {
  var edad = 2
  method edad() {return edad}
  method peso() {return edad * 20}
  method cumplirAños(){
    edad = edad + 1
  }
}

object nibbles {
    method peso() {return 35}
}

object micky {
    var peso = 30
    method peso() {return peso}
    method engordar(cantidadAEngordar){
        peso = peso + cantidadAEngordar
    }
}
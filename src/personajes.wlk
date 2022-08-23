import armas.*
import elementos.*

object floki{
	var arma = ballesta
	method encontrar(elemento){
		if (arma.estaCargada()){
			elemento.recibirAtaque(arma)
			arma.usarArma()
		} 
	}
	method cambiarArma(unArma){arma = unArma} 	
}

object mario{
	var valorRecolectado = 0
	var ultimoElementoVisitado
	method encontrar(elemento){
		valorRecolectado += elemento.valorOtorgado()
		elemento.recibirTrabajo()
		ultimoElementoVisitado = elemento
	}
	method estaFeliz() = valorRecolectado >= 50 or ultimoElementoVisitado.altura() >= 10
}
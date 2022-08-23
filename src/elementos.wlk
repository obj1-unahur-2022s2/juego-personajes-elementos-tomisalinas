import armas.*

object castillo {
	var nivelDeDefensa = 150
	method altura() = 20
	method recibirAtaque(arma){
		nivelDeDefensa = 0.max(nivelDeDefensa - arma.potenciaDelArma())
	}
	method valorOtorgado() = nivelDeDefensa / 5
	method recibirTrabajo() {nivelDeDefensa = 200.min(nivelDeDefensa + 20)}
}

object aurora {
	var estaViva = true
	method altura() = 1
	method recibirAtaque(arma){
		if (estaViva and arma.potenciaDelArma() >= 10){estaViva = false}
	}
	method valorOtorgado() = 15
	method recibirTrabajo(){}
}

object tipa {
	var altura = 8
	method altura() = altura
	method recibirAtaque(arma){}
	method valorOtorgado() = altura * 2
	method recibirTrabajo(){altura ++}	
}

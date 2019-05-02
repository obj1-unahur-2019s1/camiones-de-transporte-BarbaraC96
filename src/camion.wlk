import cosas.*

object camion {
	const property cosas = []
	
	method cargar(unaCosa) {
		cosas.add(unaCosa)
	}
	method descargar(unaCosa) { cosas.remove(unaCosa)}
	method pesoTotal() { return cosas.sum {
		carga => carga.peso() 
	} + 1000
}	
	method excedidoDePeso() { return 
		self.pesoTotal() > 2500
}
	
	method objetosPeligrosos(nivel) { return cosas.filter ({
		cosa => cosa.nivelPeligrosidad() > nivel
	})
	
}
	method objetosMasPeligrososQue(cosa) {}
	
	method puedeCircularEnRuta(nivelMaximoPeligrosidad) {}
	
	method tieneAlgoQuePesaEntre(min, max) {}
	
	method cosaMasPesada() {}
	
	method totalBultos() {}
	
	method pesos() {} 
}

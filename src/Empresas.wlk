import Profesionales.*
class Empresa {
	var property profesionales
	var property honorarioDeReferencia
	var property clientes
	
	method profesionalesEgresadosDe(universidad){
		return profesionales.count{profesional=>profesional.universidad()==universidad}
	}
	method profesionalesCaros(){
		return profesionales.filter{profesional=>profesional.honorariosPorHora()>honorarioDeReferencia}
	}
	method universidadesFormadoras(){
		return profesionales.map{profesional=>profesional.universidad()}.asSet()
	}	
	method profesionalMasBarato(){
		return profesionales.min{profesional=>profesional.honorariosPorHora()}
	}
	method tieneGenteAcotada(){
	return profesionales.all{profesional=>profesional.provincias().size()<=3}
	}
	method puedeSatisfacer(solicitante){
		return profesionales.any{profesional=>solicitante.puedeSatisfacer(profesional)}
	}

	method darServicio(solicitante) {
		if( not self.puedeSatisfacer(solicitante)){
			self.error(self+"no puede satisfacer a el solicitante"+solicitante)
		}
		const profElegido=profesionales.find{prof=>prof.puedeSatisfacer(solicitante)}
		profElegido.cobrar(profElegido.honorariosPorHora())
		clientes.add(solicitante)
	}
	method esPocoAtractivo(empleado){
		return profesionales.any{
			profesional=>profesional.provincias()==empleado.provincias()&& 
			profesional.honorariosPorHora()< empleado.honorariosPorHora()
		}
	}
}
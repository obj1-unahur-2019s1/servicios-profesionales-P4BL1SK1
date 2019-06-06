class Persona {
	var property provincia
	
	method puedeSerAtendidaPor(profesional){
		return profesional.provincias().contains(provincia)
	}
}

class Institucion{
	var property universidadesReconocidas
	
	method puedeSerAtendidaPor(profesional){
		return universidadesReconocidas.contains(profesional.universidad())
	}
	
}

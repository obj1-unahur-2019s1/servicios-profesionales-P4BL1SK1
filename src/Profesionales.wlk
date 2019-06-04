class ProfesionalVinculado {
	var property  universidad
	method provincias() {return [universidad.provincia()]}
	method honorariosPorHora() {return universidad.honorariosRecomendados()}
}

class ProfesionalAsociado {
	var property universidad
	method provincias() {return ["Entre Rios", "Santa Fe", "Corrientes"]}
	method honorariosPorHora() {return 3000}
}

class ProfesionalLibre {
	var property universidad
	var property provincias=#{}
	var property honorariosPorHora
}



class Universidad{
	var property provincia
	var property honorariosRecomendados
}
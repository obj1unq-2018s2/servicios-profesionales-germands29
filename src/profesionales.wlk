// esta clase está completa, no necesita nada más


class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}

class Universidad {
	var property provincia
	var property honorarios
}

class ProfesionalVinculado {
	var property universidad
		
	method provinciasDondePuedeTrabajar() {return #{universidad.provincia()}}
	method honorariosPorHora() { return universidad.honorarios()}
}


class ProfesionalLibre {
	var universidad
	var property honorarios
	var property provinciasDondePuedeTrabajar
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	method honorariosPorHora(){return honorarios}
	method provinciasDondePuedeTrabajar() {return #{provinciasDondePuedeTrabajar}} 
	}



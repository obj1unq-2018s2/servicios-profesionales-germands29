// esta clase está completa, no necesita nada más


class ProfesionalAsociado {
	var universidad
	
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}

class Universidad {
	var provincia
	var  honorarios
	method honorarios() {return honorarios}
	method honorarios(cantidad){honorarios = cantidad}
	method provincia() { return provincia}
	method provincia(prov) { provincia = prov}
}

class ProfesionalVinculado {
	var universidad
		
	method universidad() { return universidad }
	method universidad(univ) { universidad = univ }
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



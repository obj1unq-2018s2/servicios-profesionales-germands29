import profesionales.*

class EmpresaDeServicios{
	var profesionales = #{}
	var property honorariosDeReferencia 
	
	
	method agregarProfesional(prof){profesionales.add(prof)	}
	
	method profesionalesCaros(){
		return profesionales.filter{profesional => profesional.honorariosPorHora()> honorariosDeReferencia}
	}
	
	method profesionalMasBarato(){
		return profesionales.min{profesional=> profesional.honorariosPorHora()}
	}
	
	method universidadesFormadoras(){
		var universidadesDeLosProfesionales = []
		// TODO Le estás mandando el mensaje .universidad() a la colección de profesionales en lugar de a uno en particular.
		// Igual no deberías usar forEach para responder una pregunta. 
		profesionales.forEach{profesional => universidadesDeLosProfesionales.add(profesionales.universidad())}
		return universidadesDeLosProfesionales.withOutDuplicates()
	}
/* 	
	method provinciaCubierta(provincia){
		var provinciasQuePuedenTrabajarLosProf
		
		forEach provinciasQuePuedenTrabajarLosProf.add()
		
		return profesionales.any(profesionales.provinciasDondePuedeTrabajar()== provincia)
	}
*/	
	method cantidadDeProfesionalesQueEstudiaronEn(universidad){
		var universidadesDeLosProf =	profesionales.filter{profesional => profesional.universidad() == universidad} 
		return universidadesDeLosProf.size()
		
	}
}


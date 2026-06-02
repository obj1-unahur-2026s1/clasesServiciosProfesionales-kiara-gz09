class ProfesionalVinculado {
  const property universidad

  method puedeTrabajarEn() = [universidad.provincia()]
  method honorarios() = universidad.honorariosPorHr()
}

class ProfesionalAsociado {
  const property universidad

  method puedeTrabajarEn() = ["Entre Ríos", "Santa Fe", "Corrientes"]
  method honorarios() = universidad.honorariosPorHr()
}

class ProfesionalLibre {
  const property universidad
  const property puedeTrabajarEn
  const property honorarios  

}

class Universidad {
  const property provincia
  const property honorariosPorHr
}

class EmpresaServicios {
  const honorariosRef
  const profesionalesContratados = []
  
  method contratarA(unProfesional) {
    profesionalesContratados.add(unProfesional)
  }
  method despedirA(unProfesional) {
    if (profesionalesContratados.contains(unProfesional))
      profesionalesContratados.remove(unProfesional)
  }
  method cantProfesionalesQueEstudiaronEn(unaUniversidad) {
    return  profesionalesContratados.count{p => p.universidad() == unaUniversidad}
  }
  method conjProfesionalesCaros() = profesionalesContratados.map{p => p.honorarios() > honorariosRef}
  method conjUniversidadesFormadoras() = profesionalesContratados.map({p => p.universidad()}).asSet()
  method profesionalMasBarato() = profesionalesContratados.min{p => p.honorarios()}
  method esDeGenteAcotada() = profesionalesContratados.all({p => p.puedeTrabajarEn().size() <= 3}) 



}

class ProfesionalVinculado {
    const property universidad
    method puedeTrabajarEn() = [universidad.provincia()]
    method honorarios() = universidad.honorarios()

}
class ProfesionalAsociado {
  const property universidad
  method puedeTrabajarEn() = ["Entre Ríos", "Santa Fe", "Corrientes"]
  method honorarios() = universidad.honorarios()

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
  
}
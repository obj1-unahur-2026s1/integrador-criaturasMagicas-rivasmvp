class Rol{
    method extraPoder()
    method esExtraordinaria(criatura)
    method validarCambio(nuevoRol , criatura)
    method esGuardian() = false
    method esDomador() = false
    method condicionValidaCambio() = false

}

class Domador inherits Rol{
    const mascotas = []
    override method extraPoder() = mascotas.sum({m => m.poderQueAporta()})
    method todasLasMascotasVeteranas() = mascotas.all({e => e.edad() >= 10})
    method algunaMascotaSinCuernosY_Año(1) = mascotas.//TODOOOOO
    override method esExtraordinaria(criatura) = self.todasLasMascotasVeteranas() and criatura.poderMagico() >= 15
    override method condicionValidaCambio() = self
}


class Hechicero inherits Rol{
    override method extraPoder() = 0
    override method esExtraordinaria(criatura) = true
    override method validarCambio(nuevoRol , criatura){
        if (not nuevoRol.esGuardian()) {
            self.error("El ritual falló: un hechicero solo puede pasar a ser Guardián")
    }
}}

class Guardian inherits Rol{
    override method extraPoder() = 100
    override method esExtraordinaria(criatura) = criatura.poderMagico() >= 50 
    override method validarCambio(nuevoRol , criatura){
        if (not nuevoRol.esDomador() and tieneMascotaIniciarValida()){
            self.error("El guardian solo puede cambiar a Domador")
        }
    }
    
}

class Mascota{
    const edad
    method edad() = edad
    const tieneCuernos
    
    method tieneCuernos() = tieneCuernos
    method poderQueAporta() = if (tieneCuernos) 150 else 0 
}
import roles.*
class Criatura{
  const poderBase
  method poderMagico() = rol.extraPoder() + poderBase

  const astucia
  method astucia() = astucia

  var property rol

  method esAstuta()

  method esExtraordinaria() = rol.esExtraordinaria()

  method esFormidable() = self.esAstuta() or self.esExtraordinaria()

  method cambiarRol(nuevoRol){
      rol.validarCambio(nuevoRol , self)
      rol = nuevoRol
  }

   method disminuirPoderMagico(criatura){
    criatura.poderMagico() = criatura.poderMagico() * 0.85 
    }



}

class Hada inherits Criatura{
  var property kmPuedeVolar = 2
  method pasarTiempo(tiempo) = (kmPuedeVolar + tiempo * 2).min(25)
  override method esAstuta() = astucia >= 50 
  override method esExtraordinaria() = super() and self.kmPuedeVolar() >= 10

}

class Duende inherits Criatura{
  override method poderMagico() = super() * 1.10

  override method esAstuta() = false 

}
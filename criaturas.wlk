import roles.*
class Criatura{
  method poderMagico()
  const astucia
  const rol

}

class Hada inherits Criatura{
  var property kmPuedeVolar = 2
  method pasarTiempo(tiempo) = (kmPuedeVolar + tiempo * 2).min(25)
}

class Duende inherits Criatura{
  override method poderMagico() = super() * 0.10
}
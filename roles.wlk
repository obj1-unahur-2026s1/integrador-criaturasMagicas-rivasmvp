class Rol{
    var property extraPoder = 100
}

class Domador inherits Rol{
    const mascotas = []

}

class Hechicero inherits Rol{
    override method extraPoder() = 0
}

class Mascotas{
    const edad
    const tieneCuernos
}
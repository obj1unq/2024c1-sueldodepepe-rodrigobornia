object pepe {
	var categoria = cadete
	var bonoPorResultado = resultadoNulo
	var bonoPorPresentismo = presentimoNulo
	var faltas = 0
	
	method sueldo(){
		return self.neto() + bonoPorResultado.resultado(self) + bonoPorPresentismo.resultado(self) 
	}
	
	method neto(){
		return categoria.neto()
	}
	
	
	method categoria(_categoria){
		categoria = _categoria
	}
	method bonoPorResultado(_bonoPorResultado){
		bonoPorResultado = _bonoPorResultado
	}
	method bonoPorPresentismo(_bonoPorPresentismo){
		bonoPorPresentismo = _bonoPorPresentismo
	}
	method faltas(_faltas){
		faltas = _faltas
	}
	method faltas(){
		return faltas
	}
}
object cadete{
	method neto(){
		return	15000
	}
}
object gerente{
	method neto(){
		return 20000
	}
}

object bonoPorcentaje{
	method resultado(empleado){
		return empleado.neto() * 10 /100
		}
}
	
object montoFijo{
	method resultado(empleado){
			return 800
		}
}
	
object resultadoNulo {
	method resultado(empleado){
		return 0
		}	
}

object normal{
	method resultado(empleado){
		return if(empleado.faltas() == 0){
			2000
		}else if(empleado.faltas() == 1){
			1000
		}else{
			0
		}
	}
}


object ajuste{
	method resultado(empleado){
	return if (empleado.faltas() == 0){
		100
	}else{
		0
	}
   }	
}

object demagogico{
	method resultado(empleado){
		return if (empleado.neto() < 18000){
			500
		}else{
			300
		}
	}
}

object presentimoNulo{
	method resultado(empleado){
		return 0
		}	
}